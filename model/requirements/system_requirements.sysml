/**
 * LORS — System-Level Requirements
 * ──────────────────────────────────
 * Formal SysML v2 requirements derived from:
 *   - DESIGN_GUIDE.MD (design principles)
 *   - ARCHITECTURE_ANALYSIS.MD (standardization priorities)
 *   - STANDARDS_AND_DOCS.MD (applicable standards)
 *   - ROVER_COMMANDS.MD (command architecture)
 *
 * Each requirement carries traceability to its source section
 * and can be automatically verified against the system model.
 *
 * Version: 0.1.0-draft
 * Date:    2026-03-26
 */
package LORS_Requirements {

    import LORS_Types::*;
    import LORS_System::*;
    import LORS_Interfaces::*;

    // ═══════════════════════════════════════════════
    //  1. MISSION-LEVEL REQUIREMENTS
    // ═══════════════════════════════════════════════

    requirement def <'REQ-MIS-001'> InteroperabilityGoal {
        doc /* Source: README.MD, DESIGN_GUIDE.MD §Purpose */

        subject rover : LORSCompliantRover;

        text = "LORS-compliant rovers shall be capable of interfacing "
               "with at least two distinct lander platforms without "
               "hardware modification to the rover-side interface.";

        attribute verification : VerificationMethod = VerificationMethod::Demonstration;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;
    }

    requirement def <'REQ-MIS-002'> CostReduction {
        doc /* Source: DESIGN_GUIDE.MD §Purpose */

        text = "The LORS standard shall reduce development cost for "
               "a new micro-class rover by a minimum of 30% compared "
               "to a fully custom design, measured by bill-of-materials "
               "and integration labor hours.";

        attribute verification : VerificationMethod = VerificationMethod::Analysis;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;
    }

    requirement def <'REQ-MIS-003'> OpenStandard {
        doc /* Source: README.MD, DESIGN_GUIDE.MD §Counter Vendor Lock-in */

        text = "All LORS interface specifications, reference designs, "
               "and software shall be published under an open-source "
               "license (MIT, Apache 2.0, or equivalent) to prevent "
               "vendor lock-in.";

        attribute verification : VerificationMethod = VerificationMethod::Inspection;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;
    }

    // ═══════════════════════════════════════════════
    //  2. MECHANICAL REQUIREMENTS
    // ═══════════════════════════════════════════════

    requirement def <'REQ-STR-001'> CubeSatVoxelGrid {
        doc /* Source: DESIGN_GUIDE.MD §CubeSat Standards Integration */

        subject structure : StructureSubsystem;

        text = "The rover chassis interior shall be organized on a "
               "100 mm (1U) voxel grid to enable integration of "
               "standard CubeSat form-factor components.";

        attribute verification : VerificationMethod = VerificationMethod::Inspection;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;

        require constraint {
            structure.voxel_grid_mm == 100.0
        }
    }

    requirement def <'REQ-STR-002'> ModularLocomotionDeck {
        doc /* Source: DESIGN_GUIDE.MD §Modular Frame Mounts */

        subject structure : StructureSubsystem;

        text = "The rover shall provide a modular locomotion deck "
               "('skateboard' architecture) that allows replacement "
               "of the drive system (wheels, tracks, legs) without "
               "modification to the upper chassis.";

        attribute verification : VerificationMethod = VerificationMethod::Demonstration;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;

        require constraint {
            structure.locomotion_deck == true
        }
    }

    requirement def <'REQ-STR-003'> DeploymentEnvelope {
        doc /* Source: ARCHITECTURE_ANALYSIS.MD §5.1 */

        subject rover : LORSCompliantRover;

        text = "LORS shall define deployment envelope specifications "
               "(maximum stowed dimensions and mass) per rover class "
               "rather than mandating specific deployment mechanisms, "
               "to allow lander provider flexibility.";

        attribute verification : VerificationMethod = VerificationMethod::Analysis;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;
    }

    // ═══════════════════════════════════════════════
    //  3. ELECTRICAL POWER REQUIREMENTS
    // ═══════════════════════════════════════════════

    requirement def <'REQ-PWR-001'> StandardVoltageBus {
        doc /* Source: ARCHITECTURE_ANALYSIS.MD §4.2 */

        subject eps : ElectricalPowerSubsystem;

        text = "The LORS baseline power bus shall be 28 VDC "
               "unregulated (24–34 V range), consistent with "
               "7 of 10 major lander platforms.";

        attribute verification : VerificationMethod = VerificationMethod::Test;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;

        require constraint {
            eps.primary_bus.voltage.nominal_V == 28.0
        }
    }

    requirement def <'REQ-PWR-002'> VoltageConversionModules {
        doc /* Source: ARCHITECTURE_ANALYSIS.MD §4.2 */

        text = "LORS shall define standard voltage conversion modules "
               "for 12 V (nano-rover) and 120 V+ (infrastructure) "
               "compatibility with the 28 VDC baseline bus.";

        attribute verification : VerificationMethod = VerificationMethod::Test;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;
    }

    requirement def <'REQ-PWR-003'> BatteryThermalRegimes {
        doc /* Source: DESIGN_GUIDE.MD §Battery Standards */

        text = "LORS shall standardize four battery thermal regimes: "
               "(1) Daylight-only, (2) Day/Night survival with active "
               "heating, (3) Warm (peaks of eternal light / lava tubes), "
               "(4) Cryogenic (permanently shadowed craters). Each "
               "regime shall define minimum capacity, temperature "
               "ratings, and form factor.";

        attribute verification : VerificationMethod = VerificationMethod::Test;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;
    }

    requirement def <'REQ-PWR-004'> DualTRLComponents {
        doc /* Source: DESIGN_GUIDE.MD §Dual TRL Component Options */

        text = "For each power component in the LORS catalog, both "
               "a COTS (ground-dev) and a flight-qualified version "
               "shall be identified with the same form factor, and "
               "the design changes required to transition between "
               "them shall be documented.";

        attribute verification : VerificationMethod = VerificationMethod::Inspection;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;
    }

    // ═══════════════════════════════════════════════
    //  4. COMMUNICATION REQUIREMENTS
    // ═══════════════════════════════════════════════

    requirement def <'REQ-COM-001'> BaselineWireless {
        doc /* Source: ARCHITECTURE_ANALYSIS.MD §4.3 */

        subject comm : CommunicationsSubsystem;

        text = "The LORS baseline wireless standard shall be "
               "IEEE 802.11ac (5 GHz Wi-Fi) with AES-256 encryption.";

        attribute verification : VerificationMethod = VerificationMethod::Test;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;

        require constraint {
            comm.wifi.standard == WirelessProtocol::WiFi_802_11ac &&
            comm.encryption    == EncryptionStandard::AES256_NIST
        }
    }

    requirement def <'REQ-COM-002'> UniversalPayloadGateway {
        doc /* Source: ARCHITECTURE_ANALYSIS.MD §4.3 */

        text = "LORS-compliant rovers shall implement a Universal "
               "Payload Gateway capable of translating between "
               "RS-422, Ethernet, and LTE protocols to operate "
               "across all major lander platforms.";

        attribute verification : VerificationMethod = VerificationMethod::Demonstration;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;
    }

    requirement def <'REQ-COM-003'> MeshNetworking {
        doc /* Source: DESIGN_GUIDE.MD §Interoperability & Mesh Networks */

        subject comm : CommunicationsSubsystem;

        text = "All LORS-compliant rovers shall support passive mesh "
               "networking using DTN Bundle Protocol (RFC 9171) to "
               "act as communication relay nodes for other rovers.";

        attribute verification : VerificationMethod = VerificationMethod::Demonstration;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;

        require constraint {
            comm.supports_dtn == true
        }
    }

    requirement def <'REQ-COM-004'> CommandProtocol {
        doc /* Source: ROVER_COMMANDS.MD, ROVER_SOFTWARE_PROPOSAL.MD */

        subject comm : CommunicationsSubsystem;

        text = "Commands shall be defined using XTCE schemas and "
               "transported via MAVLink protocol. The rover shall "
               "support both MAVLink and XTCE.";

        attribute verification : VerificationMethod = VerificationMethod::Test;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;

        require constraint {
            comm.supports_mavlink == true &&
            comm.supports_xtce    == true
        }
    }

    requirement def <'REQ-COM-005'> SecurityBaseline {
        doc /* Source: ARCHITECTURE_ANALYSIS.MD §4.4 */

        subject comm : CommunicationsSubsystem;

        text = "All LORS data links shall implement a minimum of "
               "AES-256 encryption per NIST SP 800-53 with "
               "standardized key exchange protocols.";

        attribute verification : VerificationMethod = VerificationMethod::Test;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;

        require constraint {
            comm.encryption == EncryptionStandard::AES256_NIST
        }
    }

    // ═══════════════════════════════════════════════
    //  5. SOFTWARE & AUTONOMY REQUIREMENTS
    // ═══════════════════════════════════════════════

    requirement def <'REQ-SFT-001'> FlightSoftwareBaseline {
        doc /* Source: ROVER_SOFTWARE_PROPOSAL.MD */

        subject cdh : CommandDataHandlingSubsystem;

        text = "The LORS reference flight software framework shall "
               "be NASA JPL F' (FPrime) with ROS 2 integration "
               "for sensor processing and navigation.";

        attribute verification : VerificationMethod = VerificationMethod::Demonstration;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;
    }

    requirement def <'REQ-SFT-002'> SimulationFirst {
        doc /* Source: DESIGN_GUIDE.MD §Software & Simulation First */

        text = "LORS shall include standard simulation environments "
               "(Gazebo + ROS 2) as part of the core release. "
               "Development shall begin in simulation before physical "
               "prototyping.";

        attribute verification : VerificationMethod = VerificationMethod::Demonstration;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;
    }

    requirement def <'REQ-SFT-003'> HardwareAbstraction {
        doc /* Source: DESIGN_GUIDE.MD §Software & Simulation First */

        text = "Flight software shall be written against the LORS "
               "standard APIs, not the specific hardware instance, "
               "to enable portability across different rover builds.";

        attribute verification : VerificationMethod = VerificationMethod::Test;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;
    }

    requirement def <'REQ-SFT-004'> SemiAutonomousControl {
        doc /* Source: ROVER_COMMANDS.MD §Control Philosophy */

        text = "LORS rovers shall support four control paradigms: "
               "(1) Real-time commands, (2) Sequence execution, "
               "(3) Full autonomy with mission plan, (4) Supervisory "
               "control with 30-second status updates.";

        attribute verification : VerificationMethod = VerificationMethod::Demonstration;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;
    }

    requirement def <'REQ-SFT-005'> SafeModeTrigger {
        doc /* Source: ROVER_COMMANDS.MD §Safety */

        text = "The rover shall automatically transition to Safe Mode "
               "upon loss of communication for more than 300 seconds "
               "or upon detection of any critical anomaly.";

        attribute verification : VerificationMethod = VerificationMethod::Test;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;
    }

    // ═══════════════════════════════════════════════
    //  6. ENVIRONMENTAL REQUIREMENTS
    // ═══════════════════════════════════════════════

    requirement def <'REQ-ENV-001'> ThermalOperatingRange {
        doc /* Source: ROVER_SOFTWARE_PROPOSAL.MD §9 */

        subject thermal : ThermalControlSubsystem;

        text = "LORS-compliant rovers shall operate in the lunar "
               "surface thermal environment of -180°C to +120°C.";

        attribute verification : VerificationMethod = VerificationMethod::Test;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;
    }

    requirement def <'REQ-ENV-002'> OutgassingCompliance {
        doc /* Source: STANDARDS_AND_DOCS.MD §Outgassing
             * Quantitative constraint: see REQ-MAT-001 in
             * budget_requirements.sysml (child requirement).
             */

        text = "All materials used in LORS-compliant hardware shall "
               "meet ASTM E595 outgassing criteria: TML < 1.0% and "
               "CVCM < 0.1%.";

        attribute verification : VerificationMethod = VerificationMethod::Test;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;
    }

    requirement def <'REQ-ENV-003'> EMICompliance {
        doc /* Source: STANDARDS_AND_DOCS.MD §EMI/EMC */

        text = "LORS-compliant rovers shall meet MIL-STD-461G "
               "or ECSS-E-ST-20-07C EMI/EMC requirements as "
               "applicable to the target lander platform.";

        attribute verification : VerificationMethod = VerificationMethod::Test;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;
    }

    requirement def <'REQ-ENV-004'> LunarRegolithProtection {
        doc /* Source: implied from lunar operations context */

        text = "Critical mechanisms (bearings, seals, optical "
               "surfaces) shall be designed to mitigate lunar "
               "regolith (dust) intrusion and abrasion per "
               "ISO 10788 simulant testing.";

        attribute verification : VerificationMethod = VerificationMethod::Test;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;
    }

    // ═══════════════════════════════════════════════
    //  7. MODULARITY & CATALOG REQUIREMENTS
    // ═══════════════════════════════════════════════

    requirement def <'REQ-MOD-001'> SwappableModules {
        doc /* Source: DESIGN_GUIDE.MD §Swappable Electronics Modules */

        text = "LORS shall define swappable electronics modules "
               "that auto-detect their role upon insertion via "
               "data bus handshake. Modules shall be replaceable "
               "by simple robotic arms in field conditions.";

        attribute verification : VerificationMethod = VerificationMethod::Demonstration;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;
    }

    requirement def <'REQ-MOD-002'> FullDeckCatalog {
        doc /* Source: DESIGN_GUIDE.MD §Full Deck Design Philosophy
             * Quantitative constraint: see REQ-CAT-001 in
             * budget_requirements.sysml (child requirement).
             */

        text = "The LORS component catalog shall contain approximately "
               "50 principal components organized in 7 categories of "
               "7 components each, sufficient to configure 95% of "
               "missions expected in the next 10–20 years.";

        attribute verification : VerificationMethod = VerificationMethod::Inspection;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;
    }

    requirement def <'REQ-MOD-003'> WaiverPath {
        doc /* Source: DESIGN_GUIDE.MD §Battery Standards */

        text = "LORS shall define a waiver and specification-bump "
               "path for components that exceed the standard form "
               "factor. Field-proven non-standard designs shall be "
               "eligible for catalog inclusion.";

        attribute verification : VerificationMethod = VerificationMethod::Inspection;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;
    }

    // ═══════════════════════════════════════════════
    //  8. INTEROPERABILITY REQUIREMENTS
    // ═══════════════════════════════════════════════

    requirement def <'REQ-IOP-001'> SiloBreaking {
        doc /* Source: DESIGN_GUIDE.MD §Interoperability & Mesh Networks */

        text = "LORS shall explicitly define interfaces that allow "
               "rovers from different providers to communicate, "
               "share situational awareness data (position, obstacles, "
               "battery status), and provide mutual aid.";

        attribute verification : VerificationMethod = VerificationMethod::Demonstration;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;
    }

    requirement def <'REQ-IOP-002'> LunaNetCompliance {
        doc /* Source: STANDARDS_AND_DOCS.MD §Lunar Interop */

        text = "LORS communication interfaces shall be compatible "
               "with the NASA LunaNet Interoperability Specification "
               "(LNIS v5) for lunar comms, navigation, and timing.";

        attribute verification : VerificationMethod = VerificationMethod::Analysis;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;
    }

    // ═══════════════════════════════════════════════
    //  SATISFACTION LINKS
    //  (Tracing requirements to model elements)
    // ═══════════════════════════════════════════════

    satisfy REQ-PWR-001 by LORSCompliantRover.eps.primary_bus;

    satisfy REQ-COM-001 by LORSCompliantRover.comm.wifi;

    satisfy REQ-COM-003 by LORSCompliantRover.comm.mesh;

    satisfy REQ-STR-001 by LORSCompliantRover.structure;

    satisfy REQ-STR-002 by LORSCompliantRover.structure;

    satisfy REQ-SFT-001 by LORSCompliantRover.cdh;
}
