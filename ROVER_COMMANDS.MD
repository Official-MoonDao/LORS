# Lunar Rover Remote Control Commands

This document defines standardized commands for remote control of LORS-compliant lunar rovers, accounting for Earth-Moon communication delays (~1-3 seconds minimum) that prevent direct real-time control.

## Control Philosophy

Due to communication latency, lunar rover control follows a **semi-autonomous approach**:

- **Real-time Commands**: Immediate actions for critical operations
- **Sequence Commands**: Upload and execute pre-planned command sequences
- **Autonomous Modes**: Rover operates independently based on uploaded mission plans
- **Supervisory Control**: Ground station monitors and intervenes only when necessary

## Command Categories

### 1. Motion Control Commands

#### DRIVE_VELOCITY
Execute controlled movement with specified velocity and duration.
- **Parameters**:
  - velocity: -2.0 to 2.0 m/s (negative = reverse)
  - duration: 1-300 seconds
  - steering_angle: -180 to 180 degrees
- **Use Case**: Precise movement during sample collection
- **Execution**: Immediate with safety monitoring

#### GOTO_POSITION
Navigate to lunar coordinates autonomously.
- **Parameters**:
  - latitude: Lunar latitude (-90 to 90)
  - longitude: Lunar longitude (-180 to 180)
  - altitude: Lunar altitude (m)
  - tolerance: Acceptable arrival tolerance (m)
- **Use Case**: Travel between waypoints
- **Execution**: Autonomous navigation with obstacle avoidance

#### EMERGENCY_STOP
Immediate halt of all movement.
- **Parameters**: None
- **Use Case**: Safety override
- **Execution**: Instantaneous, highest priority

### 2. Low-Level Motor Control Commands

#### SET_MOTOR_VOLTAGE
Direct control of individual motor voltage (expert mode only).
- **Parameters**:
  - motor_id: Target motor (0-5 for 6-wheel rover)
  - voltage: -12.0 to 12.0 V (negative = reverse)
  - duration: 0.1-10.0 seconds
- **Use Case**: Precise wheel control, maintenance operations
- **Safety**: Requires explicit safety override; automatic shutdown on communication loss
- **Execution**: Direct voltage application with current monitoring

#### SET_SERVO_POSITION
Control servo actuators with precise positioning.
- **Parameters**:
  - servo_id: Target servo identifier
  - position: 0-180 degrees or 0-4096 (PWM units)
  - speed: Positioning speed (deg/s)
- **Use Case**: Robotic arm manipulation, camera positioning
- **Execution**: Position control with feedback verification

#### CONTROL_DIFFERENTIAL
Direct differential steering control for skid-steering rovers.
- **Parameters**:
  - left_speed: -100 to 100% (-100 = full reverse)
  - right_speed: -100 to 100%
  - duration: 0.1-60.0 seconds
- **Use Case**: Precise turning maneuvers
- **Execution**: Independent wheel speed control

### 3. Mission Sequence Commands

#### UPLOAD_MISSION_SEQUENCE
Upload a sequence of commands for autonomous execution.
- **Parameters**:
  - sequence_id: Unique identifier (1-999)
  - commands: Array of command objects with parameters
  - start_condition: Time delay or trigger condition
- **Use Case**: Multi-hour traverses or complex operations
- **Execution**: Stored for later execution

#### START_SEQUENCE
Begin execution of uploaded mission sequence.
- **Parameters**:
  - sequence_id: Target sequence to execute
- **Use Case**: Initiate autonomous operations
- **Execution**: Begins autonomous mode

#### PAUSE_SEQUENCE
Temporarily halt sequence execution.
- **Parameters**:
  - sequence_id: Target sequence
- **Use Case**: Emergency pause during execution
- **Execution**: Holds current state, maintains position

#### RESUME_SEQUENCE
Continue paused sequence execution.
- **Parameters**:
  - sequence_id: Target sequence
- **Use Case**: Resume after pause
- **Execution**: Continues from pause point

### 4. Operational Mode Commands

#### SET_OPERATIONAL_MODE
Change rover operational mode.
- **Parameters**:
  - mode: "AUTONOMOUS" | "REMOTE_CONTROL" | "SAFE" | "MAINTENANCE"
- **Use Case**: Switch between control paradigms
- **Execution**: Mode transition with safety checks

#### AUTONOMOUS_MODE
Enable full autonomous operation with uploaded mission plan.
- **Parameters**:
  - mission_plan: Complete mission definition
- **Use Case**: Unsupervised operations during lunar night
- **Execution**: Rover operates independently until completion or intervention

### 5. Payload and Sensor Commands

#### ACQUIRE_IMAGE
Capture image with specified parameters.
- **Parameters**:
  - camera_id: Target camera (0-3)
  - resolution: "LOW" | "MEDIUM" | "HIGH"
  - target: Specific target coordinates or "CURRENT_VIEW"
- **Use Case**: Scientific imaging
- **Execution**: Immediate capture with metadata

#### COLLECT_SAMPLE
Execute sample collection sequence.
- **Parameters**:
  - location: Target coordinates
  - sample_type: "REGOLITH" | "ROCK" | "CORE"
  - depth: Sample depth (cm)
- **Use Case**: Geological sampling
- **Execution**: Semi-autonomous collection sequence

#### DEPLOY_INSTRUMENT
Deploy or configure scientific instrument.
- **Parameters**:
  - instrument_id: Target instrument
  - configuration: Instrument-specific settings
- **Use Case**: Seismic monitoring, radiation measurement
- **Execution**: Deployment sequence with verification

### 6. System Management Commands

#### REQUEST_STATUS
Request comprehensive rover status report.
- **Parameters**:
  - detail_level: "SUMMARY" | "DETAILED" | "DIAGNOSTIC"
- **Use Case**: Health monitoring
- **Execution**: Returns telemetry packet

#### UPDATE_PARAMETERS
Modify rover control parameters.
- **Parameters**:
  - parameter_id: Target parameter
  - value: New parameter value
  - persistence: "SESSION" | "PERMANENT"
- **Use Case**: Performance tuning
- **Execution**: Parameter update with validation

#### SYSTEM_REBOOT
Restart rover systems.
- **Parameters**:
  - subsystem: "ALL" | "COMPUTE" | "NAVIGATION" | "PAYLOAD"
  - reason: Reboot reason code
- **Use Case**: Software recovery
- **Execution**: Graceful shutdown and restart

## Semi-Autonomous Operation Principles

### Command Sequencing
- Commands can be chained into sequences executed without further input
- Conditional execution based on sensor feedback (e.g., "drive until obstacle detected")
- Time-based triggers for lunar day/night operations

### Autonomous Behaviors
- **Obstacle Avoidance**: Automatic path replanning around hazards
- **Safety Monitoring**: Self-checks with automatic safe mode activation
- **Resource Management**: Battery and thermal management during operations

### Supervisory Control
- Ground station receives regular status updates every 30 seconds
- Emergency commands can interrupt autonomous sequences
- Mission progress tracking with estimated completion times

## Safety and Reliability Features

### Command Validation
- All commands validated for parameter ranges and logical consistency
- Sequence validation prevents conflicting or dangerous command combinations

### Fallback Systems
- Automatic transition to safe mode on communication loss
- Return-to-home capability with predefined safe locations
- Emergency beacon activation for lost rovers

### Acknowledgment System
- Every command acknowledged with execution confirmation
- Sequence progress reported with completion estimates
- Error reporting with diagnostic information

## Implementation with XTCE/MAVLink

Commands are defined using XTCE schemas and transported via MAVLink protocol:

- **XTCE**: Provides semantic definition and parameter validation
- **MAVLink**: Efficient binary serialization for lunar communication links
- **Integration**: Ground software uses XTCE for command composition, MAVLink for transmission

This approach enables standardized control across different rover implementations while accounting for the unique challenges of lunar operations.
