/**
 * LORS — Top-Level System Definition
 * ────────────────────────────────────
 * Defines the LORS ecosystem as a system-of-systems:
 *   Rover ↔ Lander ↔ GroundSegment ↔ RelayInfrastructure
 *
 * This is the "root" of the LORS SysML v2 model.
 *
 * Version: 0.1.0-draft
 * Date:    2026-03-26
 */
package LORS_System {

    import LORS_Types::*;
    import LORS_Interfaces::*;
    import LORS_StandardsCatalog::*;

    // ═══════════════════════════════════════════════
    //  SYSTEM-OF-SYSTEMS
    // ═══════════════════════════════════════════════

    /**
     * The LORS Ecosystem — top-level context.
     * Every LORS-compliant mission instantiates some subset
     * of these elements.
     */
    part def LORSEcosystem {
        doc /* The Lunar Open-source Rover Standard ecosystem defines
             * the interoperability framework for rovers, landers,
             * ground segments, and relay infrastructure operating
             * on and around the Moon.
             */

        part rovers    : LORSCompliantRover[1..*];
        part lander    : LunarLander;
        part ground    : GroundSegment;
        part relay     : RelayInfrastructure[0..*];

        // Top-level connections
        interface : RoverLanderDeploymentInterface connect
            rovers.lander_interface to lander.rover_interface;

        interface : MeshNetworkInterface connect
            rovers.mesh_port to rovers.mesh_port;
    }

    // ═══════════════════════════════════════════════
    //  LUNAR LANDER (Provider-Agnostic Abstraction)
    // ═══════════════════════════════════════════════

    /**
     * Abstract lander definition.
     * LORS does not standardize the lander itself — it standardizes
     * the interfaces a lander must expose to be LORS-compatible.
     */
    part def LunarLander {
        doc /* Lander is modeled as a black box exposing standard
             * interfaces. Concrete landers (Griffin, Nova-C, etc.)
             * specialize this definition.
             */

        // Provider metadata
        attribute provider      : String;
        attribute lander_model  : String;
        attribute payload_capacity_kg : Real;

        // Required LORS interfaces
        port rover_interface    : DeploymentRailPort;
        port power_out          : StandardPowerPort;
        port data_wired         : EthernetDataPort;
        port data_wireless      : WiFiPort;
        port rf_earth_link      : RFLinkPort;

        // Deployment capability
        attribute deployment_type : DeploymentMechanism;
    }

    /**
     * Ground Segment — mission operations infrastructure.
     */
    part def GroundSegment {
        part mission_control : MissionControlCenter;
        part ground_station  : GroundStation[1..*];
    }

    part def MissionControlCenter {
        doc /* Runs OpenMCT + YAMCS per LORS software stack proposal. */
        attribute software_stack : String default "YAMCS + OpenMCT";
    }

    part def GroundStation {
        attribute network   : String;       // "DSN", "SSC", "ESTRACK", "Commercial"
        attribute band      : FrequencyBand;
        attribute antenna_diameter_m : Real;
        port rf_link        : RFLinkPort;
    }

    /**
     * Relay Infrastructure — LunaNet, ESA Moonlight, commercial.
     */
    part def RelayInfrastructure {
        attribute constellation_name : String;
        attribute protocol : DataProtocol default DataProtocol::DTN_BundleProtocol;
        port uplink  : RFLinkPort;
        port downlink : RFLinkPort;
    }

    // ═══════════════════════════════════════════════
    //  LORS-COMPLIANT ROVER (Abstract Base)
    // ═══════════════════════════════════════════════

    /**
     * Abstract definition of any LORS-compliant rover.
     * All rover classes (A/B/C) specialize this.
     */
    part def LORSCompliantRover {
        doc /* A LORS-compliant rover must implement the mandatory
             * interfaces and meet the core requirements defined
             * in LORS_Requirements.
             */

        // ── Classification ──
        attribute rover_class       : RoverClass;
        attribute design_phase      : DesignPhase;
        attribute trl               : TRL;

        // ── Physical Properties ──
        attribute dry_mass          : MassProperty;
        attribute wet_mass          : MassProperty;
        attribute envelope          : Envelope;

        // ── Mandatory LORS Interfaces ──
        port lander_interface       : DeploymentRailPort;
        port primary_power          : StandardPowerPort;
        port data_wired             : EthernetDataPort;
        port data_legacy            : RS422DataPort;
        port data_wireless          : WiFiPort;
        port mesh_port              : WiFiPort;

        // ── Subsystems ──
        part structure              : StructureSubsystem;
        part eps                    : ElectricalPowerSubsystem;
        part thermal                : ThermalControlSubsystem;
        part cdh                    : CommandDataHandlingSubsystem;
        part comm                   : CommunicationsSubsystem;
        part mobility               : MobilitySubsystem;
        part gnc                    : GNCSubsystem;
        part payload_bay            : PayloadBay[0..*];

        // ── Operational ──
        attribute current_mode      : OperationalMode;
    }

    // ═══════════════════════════════════════════════
    //  SUBSYSTEM DEFINITIONS
    // ═══════════════════════════════════════════════

    part def StructureSubsystem {
        doc /* Primary and secondary structure, mechanisms, and
             * deployment systems. Uses CubeSat 10 cm voxel grid
             * where applicable (DESIGN_GUIDE.MD §CubeSat Integration).
             */

        attribute total_mass        : MassProperty;
        attribute material          : String;
        attribute voxel_grid_mm     : Real default 100.0;
        attribute locomotion_deck   : Boolean default true;

        // Modular frame mounts (DESIGN_GUIDE.MD §Modular Frame Mounts)
        port module_bays            : CubeSatMountPort[1..*];
    }

    part def ElectricalPowerSubsystem {
        doc /* Solar arrays, batteries, power management &
             * distribution. Supports dual-TRL components
             * (DESIGN_GUIDE.MD §Dual TRL Component Options).
             */

        attribute solar_array_area_m2  : Real;
        attribute solar_power_W        : Real;
        attribute battery_capacity_Wh  : Real;
        attribute battery_chemistry    : String;
        attribute thermal_regime       : ThermalRegime;

        // Power bus
        port primary_bus               : StandardPowerPort;
        port aux_bus                   : RegulatedAuxPowerPort;

        // Battery standard (DESIGN_GUIDE.MD §Battery Standards)
        attribute daylight_rated       : Boolean;
        attribute night_survival_rated : Boolean;
        attribute cryo_rated           : Boolean;
    }

    part def ThermalControlSubsystem {
        doc /* Passive and active thermal control for lunar
             * temperature extremes (-180°C to +120°C).
             */

        attribute operating_range      : TemperatureRange;
        attribute survival_range       : TemperatureRange;
        attribute radiator_area_m2     : Real;
        attribute heater_power_W       : Real;
        attribute mli_layers           : Integer;
    }

    part def CommandDataHandlingSubsystem {
        doc /* Onboard computing, data storage, and flight software.
             * Supports swappable electronics modules
             * (DESIGN_GUIDE.MD §Swappable Electronics Modules).
             */

        attribute processor            : String;
        attribute ram_MB               : Real;
        attribute storage_GB           : Real;
        attribute flight_software      : String default "F' (FPrime)";
        attribute os                   : String;

        // Swappable module bays
        port module_slots              : SwappableModuleInterface[1..*];

        // Internal data bus
        port internal_bus              : CANBusPort;
    }

    part def CommunicationsSubsystem {
        doc /* RF, wireless, and mesh networking.
             * Implements LORS Universal Payload Gateway.
             */

        // Earth link
        port earth_link                : RFLinkPort;

        // Surface wireless
        port wifi                      : WiFiPort;
        port lte                       : LTEPort;

        // Mesh networking (DESIGN_GUIDE.MD §Interop & Mesh)
        port mesh                      : WiFiPort;

        // Protocol stack
        attribute supports_mavlink     : Boolean default true;
        attribute supports_xtce        : Boolean default true;
        attribute supports_dtn         : Boolean default true;

        // Encryption baseline
        attribute encryption           : EncryptionStandard default EncryptionStandard::AES256_NIST;
    }

    part def MobilitySubsystem {
        doc /* Locomotion, steering, and suspension.
             * Uses skateboard deck philosophy
             * (DESIGN_GUIDE.MD §Modular Frame Mounts).
             */

        attribute locomotion_type      : LocomotionType;
        attribute wheel_count          : Integer;
        attribute max_speed_m_per_s    : Real;
        attribute obstacle_clearance_m : Real;
        attribute suspension_type      : String;
        attribute drive_voltage        : VoltageRail;

        // Modular locomotion mount
        port drive_mount               : CubeSatMountPort;
    }

    part def GNCSubsystem {
        doc /* Guidance, Navigation, and Control.
             * Visual odometry + IMU fusion baseline,
             * crater-based localization optional.
             */

        attribute imu_type             : String;
        attribute camera_count         : Integer;
        attribute slam_algorithm       : String default "ORB-SLAM3";
        attribute supports_crater_nav  : Boolean default false;
        attribute position_accuracy_m  : Real;
    }

    part def PayloadBay {
        doc /* Generic payload mounting bay using LORS Standard
             * Payload Interface (CubeSat mount + 28 VDC + Ethernet).
             */

        attribute bay_id               : String;
        attribute max_mass_kg          : Real;
        attribute max_power_W          : Real;
        attribute envelope             : Envelope;

        port payload_interface         : CubeSatMountPort;
        port payload_power             : StandardPowerPort;
        port payload_data              : EthernetDataPort;
    }
}
