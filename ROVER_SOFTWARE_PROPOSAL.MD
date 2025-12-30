# Lunar Rover Software Stack Proposal

This document proposes a comprehensive open-source software stack for lunar rovers, enabling standardized development, interoperability, and cost-effective lunar exploration. The proposal follows the Lunar Open-source Rover Standard (LORS) principles of reusability and cross-compatibility.

## Core Software Components

### 1. Flight Software Framework: FPrime

**Description**: FPrime (F' - Framework Prime) is a component-driven flight software framework developed by NASA's Jet Propulsion Laboratory (JPL). It's designed for spacecraft and robotic systems requiring high reliability and modularity.

**Key Features**:
- Component-based architecture with automatic code generation
- Built-in fault tolerance and error handling
- Support for real-time operations
- Extensive testing framework
- Used on multiple NASA missions (including Mars 2020)

**Relevance to LORS**:
- Provides standardized flight software foundation
- Enables modular rover systems design
- Reduces development time for new rover teams

**Resources**:
- [FPrime GitHub](https://github.com/nasa/fprime)
- [FPrime Documentation](https://nasa.github.io/fprime/)

### 2. Mission Control System: YAMCS

**Description**: Yet Another Mission Control System (YAMCS) is an open-source mission control framework developed by ESA for spacecraft operations and monitoring.

**Key Features**:
- Real-time telemetry processing and display
- Commanding capabilities
- Data archiving and retrieval
- Web-based user interface
- Extensible plugin architecture

**Relevance to LORS**:
- Standardized ground control operations
- Enables interoperability between different rover teams
- Reduces ground segment development costs

**Resources**:
- [YAMCS GitHub](https://github.com/yamcs/yamcs)
- [YAMCS Documentation](https://yamcs.org/)

### 3. Mission Operations Platform: OpenMCT

**Description**: Open Mission Control Technologies (OpenMCT) is a web-based mission operations framework developed by NASA's Ames Research Center for visualization and operation of complex systems.

**Key Features**:
- Flexible, plugin-based architecture
- Real-time data visualization
- Timeline-based planning and execution
- Notebook-style documentation
- Telemetry and commanding interfaces

**Relevance to LORS**:
- Provides standardized operations interface
- Enables collaborative mission planning
- Supports integration with various data sources

**Resources**:
- [OpenMCT GitHub](https://github.com/nasa/openmct)
- [OpenMCT Documentation](https://openmct.org/)

## Additional Recommended Software

### 4. Robotics Framework: ROS 2

**Description**: Robot Operating System 2 (ROS 2) is a flexible framework for writing robot software, providing tools and libraries for building complex robot behaviors.

**Key Features**:
- Modular, distributed architecture
- Support for multiple programming languages
- Extensive sensor and actuator drivers
- Simulation integration (Gazebo)
- Active community and ecosystem

**Relevance to LORS**:
- Standardizes rover control and perception systems
- Enables reuse of navigation and manipulation algorithms
- Facilitates integration with existing robotics research

**Resources**:
- [ROS 2 Documentation](https://docs.ros.org/en/humble/)
- [ROS 2 GitHub](https://github.com/ros2/ros2)

### 5. Simulation Environment: Gazebo

**Description**: Gazebo is a 3D robotics simulator that accurately simulates robot environments, including physics, sensors, and actuators.

**Key Features**:
- Realistic physics simulation
- Sensor modeling (cameras, LIDAR, IMU)
- Integration with ROS
- Plugin-based architecture for custom environments
- Lunar terrain simulation capabilities

**Relevance to LORS**:
- Enables virtual testing of rover designs
- Standardizes simulation environments for comparison
- Reduces physical prototyping costs

**Resources**:
- [Gazebo Documentation](https://gazebosim.org/docs)
- [Gazebo GitHub](https://github.com/gazebosim/gz-sim)

### 6. Flight Control: PX4 Autopilot

**Description**: PX4 is an open-source flight control software for drones and autonomous vehicles, adaptable for rover applications.

**Key Features**:
- Real-time control algorithms
- Support for various vehicle types (including rovers)
- Extensive hardware support
- Mission planning and execution
- Integration with ROS and MAVLink

**Relevance to LORS**:
- Provides standardized autonomous navigation
- Enables cross-platform rover control
- Leverages existing drone ecosystem

**Resources**:
- [PX4 Documentation](https://docs.px4.io/)
- [PX4 GitHub](https://github.com/PX4/PX4-Autopilot)

### 7. Communication Standards: MAVLink and XTCE Integration

**MAVLink Protocol**:
MAVLink is a lightweight, header-only message marshaling library for efficient communication between ground control stations and autonomous vehicles.

**Key Features**:
- Efficient binary serialization for real-time communication
- Extensible message definitions
- Support for various transport layers (serial, UDP, TCP)
- Used by PX4, ArduPilot, and other autonomous systems
- Real-time telemetry and commanding

**XTCE (XML Telemetric and Command Exchange)**:
XTCE is a standard developed by the Object Management Group for defining telemetry and command data structures, providing semantic meaning to raw data.

**Key Features**:
- Standardized data format definitions
- Parameter metadata and processing rules
- Cross-mission compatibility
- Tool support for data processing and visualization

**MAVLink and XTCE Integration**:
MAVLink handles the low-level, real-time communication protocol, while XTCE provides the data structure definitions and semantic meaning. Together they create a complete communication stack:

- **MAVLink**: Transports the actual data packets between rover and ground station
- **XTCE**: Defines what each data field means, its units, valid ranges, and processing rules
- **Combined Benefit**: MAVLink ensures efficient transmission, XTCE ensures data can be properly interpreted and processed by different systems

**Example Integration**:
```
Ground Station → XTCE Definitions → MAVLink Messages → Rover
Rover → MAVLink Messages → XTCE Processing → Ground Station
```

**Relevance to LORS**:
- Standardizes rover-to-ground communication protocols
- Enables semantic interoperability between different systems
- Reduces custom protocol development while maintaining flexibility
- Supports both real-time operations and post-mission data analysis

**Resources**:
- [MAVLink Documentation](https://mavlink.io/en/)
- [MAVLink GitHub](https://github.com/mavlink/mavlink)
- [XTCE Specification](https://www.omg.org/spec/XTCE/)
- [CCSDS Standards](https://public.ccsds.org/)

### 8. Localization & SLAM for GPS-Denied Environments

**Description**: The Moon lacks GPS infrastructure, requiring rovers to rely on onboard localization and Simultaneous Localization and Mapping (SLAM) for navigation. These open-source solutions address this critical challenge.

**Key Open-Source Projects**:

| Project | Type | Key Features |
| :--- | :--- | :--- |
| **ORB-SLAM3** | Visual SLAM | Monocular, stereo, RGB-D camera support. High accuracy in visually textured environments. |
| **RTAB-Map** | Graph-Based SLAM | Long-term, large-scale 3D mapping. Loop closure detection. |
| **Google Cartographer** | LiDAR/2D-3D SLAM | Real-time mapping with loop closure. Suitable for structured environments. |
| **GMapping** | 2D SLAM | Laser-based particle filter SLAM. Lightweight for embedded systems. |
| **Hector SLAM** | 2D SLAM | Does not require wheel odometry—useful when slip is high (lunar regolith). |
| **OpenVSLAM** | Visual SLAM | Versatile framework supporting multiple camera models. |

**Lunar-Specific Approaches**:
- **Crater-based Localization**: Matching observed craters to orbital maps for global position fixing
- **Cross-view Localization**: Registering rover imagery against orbital imagery
- **Visual Odometry + IMU Fusion**: Combining camera motion estimation with inertial measurements

**Resources**:
- [ORB-SLAM3 GitHub](https://github.com/UZ-SLAMLab/ORB_SLAM3)
- [RTAB-Map GitHub](https://github.com/introlab/rtabmap)
- [Google Cartographer](https://github.com/cartographer-project/cartographer)

### 9. Thermal Management Software

**Description**: Lunar rovers face extreme temperature swings (-180°C to +120°C). Software for thermal monitoring and control is mission-critical.

**Open-Source Components**:
- **OpenTHERM**: Open protocol for thermal system communication
- **ROS 2 Thermal Nodes**: Community packages for temperature monitoring/control
- **Thermal Modeling**: Integration with open FEA tools (e.g., FreeCAD FEM, Elmer)

**Relevance to LORS**:
- Standardized thermal telemetry formats
- Common interfaces for heater control and radiator positioning
- Night survival mode coordination

### 10. Power Management Systems

**Description**: Battery management, solar array tracking, and power distribution for autonomous operation.

**Open-Source Components**:
- **BMS Libraries**: Open-source Battery Management System firmware (e.g., DieBieMS, ENNOID-BMS)
- **MPPT Controllers**: Maximum Power Point Tracking for solar arrays
- **ROS 2 Power Nodes**: Standardized interfaces for power state reporting

**Relevance to LORS**:
- Enable overnight survival strategies
- Standardized power bus interfaces (28V common for CLPS payloads)
- Load shedding and priority management for critical systems

## Integration Architecture

The proposed software stack follows a layered architecture:

```
┌─────────────────────────────────┐
│         OpenMCT (Visualization) │
├─────────────────────────────────┤
│     YAMCS (Mission Control)     │
├─────────────────────────────────┤
│   MAVLink + XTCE (Communication)│
├─────────────────────────────────┤
│   PX4/FPrime (Flight Control)   │
├─────────────────────────────────┤
│    ROS 2 (Robotics Framework)   │
├─────────────────────────────────┤
│   Hardware Abstraction Layer    │
└─────────────────────────────────┘
```

With Gazebo providing parallel simulation capabilities.

## Implementation Roadmap

### Phase 1: Core Standards Definition
- Define interfaces between software components
- Establish data format standards using XTCE
- Create integration test suites

### Phase 2: Reference Implementation
- Develop minimal viable rover software stack
- Create example configurations for different rover types
- Establish testing and validation procedures

### Phase 3: Ecosystem Development
- Develop additional tools and utilities
- Create educational resources and tutorials
- Foster community adoption and contributions

## Benefits for LORS

1. **Reduced Development Costs**: Standardized components eliminate redundant development
2. **Accelerated Innovation**: Modular architecture enables rapid prototyping
3. **Interoperability**: Common interfaces enable rover collaboration
4. **Accessibility**: Open-source tools lower barriers for new teams
5. **Mission Success**: Proven, flight-qualified software reduces risk

## Getting Started

To begin implementing this software stack:

1. Review the documentation for each component
2. Set up development environments
3. Join relevant communities and mailing lists
4. Contribute to LORS standardization efforts

## Contributing

This proposal is part of the ongoing LORS initiative. Contributions are welcome through:

- Technical feedback on software selections
- Integration experience reports
- Additional software recommendations
- Documentation improvements

For discussions and contributions, join the [MoonDAO Discord](https://discord.com/invite/moondao).
