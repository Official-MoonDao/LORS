/**
 * LORS — Operational Behaviors & Command Definitions
 * ───────────────────────────────────────────────────
 * Defines actions, state machines, and command primitives
 * for LORS-compliant rover operations.
 *
 * Reference: ROVER_COMMANDS.MD, ROVER_SOFTWARE_PROPOSAL.MD
 * Version:   0.1.0-draft
 * Date:      2026-03-26
 */
package LORS_Operations {

    import LORS_Types::*;
    import LORS_System::*;

    // ═══════════════════════════════════════════════
    //  OPERATIONAL STATE MACHINE
    // ═══════════════════════════════════════════════

    /**
     * Top-level rover state machine.
     * All LORS rovers shall implement these states.
     */
    state def RoverOperationalStates {
        doc /* Semi-autonomous control philosophy:
             *  - Real-time commands for critical ops
             *  - Sequence commands for pre-planned operations
             *  - Autonomous modes for unsupervised operations
             *  - Supervisory control for monitoring/intervention
             */

        entry state Idle;

        state RemoteControl {
            doc /* Ground station sends real-time commands.
                 * Rover executes with safety monitoring.
                 */
        }

        state AutonomousMode {
            doc /* Rover operates independently based on
                 * uploaded mission plan.
                 */

            state Traverse {
                doc /* Waypoint-to-waypoint navigation with
                     * obstacle avoidance.
                     */
            }

            state ScienceOperation {
                doc /* Executing science sequence (imaging,
                     * sampling, instrument deployment).
                     */
            }

            state MeshRelay {
                doc /* Acting as communication relay node
                     * for other rovers.
                     */
            }
        }

        state SafeMode {
            doc /* Triggered by anomaly detection or comm loss.
                 * Rover halts motion, enters low-power state,
                 * activates emergency beacon.
                 */
        }

        state MaintenanceMode {
            doc /* Diagnostic and repair operations.
                 * Supports swappable module hot-swap.
                 */
        }

        state LunarNightSurvival {
            doc /* Ultra-low-power hibernation.
                 * Active heating of critical components.
                 * Periodic status beacons.
                 */
        }

        // Transitions
        transition Idle_to_Remote
            first Idle then RemoteControl;

        transition Idle_to_Autonomous
            first Idle then AutonomousMode;

        transition Any_to_Safe
            first RemoteControl then SafeMode;

        transition Autonomous_to_Safe
            first AutonomousMode then SafeMode;

        transition Safe_to_Idle
            first SafeMode then Idle;

        transition Any_to_Night
            first Idle then LunarNightSurvival;

        transition Night_to_Idle
            first LunarNightSurvival then Idle;

        transition Idle_to_Maintenance
            first Idle then MaintenanceMode;

        transition Maintenance_to_Idle
            first MaintenanceMode then Idle;
    }

    // ═══════════════════════════════════════════════
    //  COMMAND DEFINITIONS — Actions
    // ═══════════════════════════════════════════════

    // ── 1. Motion Control ──

    /** Drive with specified velocity and duration. */
    action def DriveVelocity {
        in velocity_m_s     : Real;     // -2.0 to 2.0
        in duration_s       : Real;     // 1 to 300
        in steering_angle_deg : Real;   // -180 to 180

        out actual_distance_m : Real;
        out status            : String;
    }

    /** Navigate to lunar coordinates autonomously. */
    action def GotoPosition {
        in latitude_deg     : Real;     // -90 to 90
        in longitude_deg    : Real;     // -180 to 180
        in altitude_m       : Real;
        in tolerance_m      : Real;

        out arrival_status  : String;
        out path_length_m   : Real;
    }

    /** Immediate halt of all movement (highest priority). */
    action def EmergencyStop {
        out stopped         : Boolean;
    }

    // ── 2. Low-Level Motor Control ──

    /** Direct motor voltage control (expert mode). */
    action def SetMotorVoltage {
        in motor_id         : Integer;  // 0-5 for 6-wheel rover
        in voltage_V        : Real;     // -12.0 to 12.0
        in duration_s       : Real;     // 0.1 to 10.0

        out current_A       : Real;
        out temp_C          : Real;
    }

    /** Servo position control. */
    action def SetServoPosition {
        in servo_id         : String;
        in position_deg     : Real;     // 0 to 180
        in speed_deg_s      : Real;

        out actual_pos_deg  : Real;
    }

    /** Differential steering control. */
    action def ControlDifferential {
        in left_speed_pct   : Real;     // -100 to 100
        in right_speed_pct  : Real;     // -100 to 100
        in duration_s       : Real;     // 0.1 to 60.0

        out heading_change_deg : Real;
    }

    // ── 3. Mission Sequence ──

    /** Upload a command sequence for autonomous execution. */
    action def UploadMissionSequence {
        in sequence_id      : Integer;  // 1-999
        in commands          : String;  // Serialized command array
        in start_condition  : String;   // Time delay or trigger

        out upload_status   : String;
        out command_count   : Integer;
    }

    /** Start execution of uploaded sequence. */
    action def StartSequence {
        in sequence_id      : Integer;
        out execution_status : String;
    }

    /** Pause sequence execution. */
    action def PauseSequence {
        in sequence_id      : Integer;
        out paused_at_step  : Integer;
    }

    /** Resume paused sequence. */
    action def ResumeSequence {
        in sequence_id      : Integer;
        out resumed_at_step : Integer;
    }

    // ── 4. Payload & Sensor ──

    /** Capture image with specified camera and resolution. */
    action def AcquireImage {
        in camera_id        : Integer;  // 0-3
        in resolution       : String;   // LOW, MEDIUM, HIGH
        in target           : String;   // Coordinates or CURRENT_VIEW

        out image_size_bytes : Real;
        out metadata        : String;
    }

    /** Execute sample collection sequence. */
    action def CollectSample {
        in location_lat_deg : Real;
        in location_lon_deg : Real;
        in sample_type      : String;   // REGOLITH, ROCK, CORE
        in depth_cm         : Real;

        out sample_mass_g   : Real;
        out status          : String;
    }

    /** Deploy or configure scientific instrument. */
    action def DeployInstrument {
        in instrument_id    : String;
        in configuration    : String;

        out deployed        : Boolean;
        out operational     : Boolean;
    }

    // ── 5. System Management ──

    /** Request comprehensive status report. */
    action def RequestStatus {
        in detail_level     : String;   // SUMMARY, DETAILED, DIAGNOSTIC

        out telemetry_packet : String;
    }

    /** Modify rover control parameters. */
    action def UpdateParameters {
        in parameter_id     : String;
        in value            : String;
        in persistence      : String;   // SESSION, PERMANENT

        out accepted        : Boolean;
    }

    /** System reboot. */
    action def SystemReboot {
        in subsystem        : String;   // ALL, COMPUTE, NAVIGATION, PAYLOAD
        in reason_code      : Integer;

        out reboot_complete : Boolean;
        out uptime_s        : Real;
    }

    // ═══════════════════════════════════════════════
    //  MISSION LIFECYCLE
    // ═══════════════════════════════════════════════

    /**
     * Standard LORS mission lifecycle.
     * Defines the nominal sequence from pre-launch to end-of-life.
     */
    action def LORSMissionLifecycle {

        action prelaunch : PreLaunchOps;
        then action transit : TransitOps;
        then action landing : LandingOps;
        then action deployment : DeploymentOps;
        then action surface_ops : SurfaceOperations;
        then action end_of_life : EndOfLifeOps;

        action def PreLaunchOps {
            doc /* Integration, testing, pre-launch checkout.
                 * EMI/EMC per MIL-STD-461G or ECSS-E-ST-20-07C.
                 * Outgassing per ASTM E595.
                 */
        }

        action def TransitOps {
            doc /* Earth-to-Moon transit. Rover powered off or in
                 * survival mode via lander umbilical.
                 */
        }

        action def LandingOps {
            doc /* Lander descent and touchdown. Rover in stowed
                 * configuration, experiencing launch loads.
                 */
        }

        action def DeploymentOps {
            doc /* Rover egress via lander deployment mechanism.
                 * Handshake: power → data → mechanical release.
                 * Post-deploy health check.
                 */
        }

        action def SurfaceOperations {
            doc /* Primary science and exploration operations.
                 * Cycles through operational modes per mission plan.
                 * Includes lunar day/night transitions.
                 */
        }

        action def EndOfLifeOps {
            doc /* Mission wrap-up: final data downlink, safe parking,
                 * or transition to relay/infrastructure role.
                 */
        }
    }
}
