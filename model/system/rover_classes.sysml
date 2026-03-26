/**
 * LORS — Rover Class Specializations
 * ────────────────────────────────────
 * Concrete rover class definitions (A, B, C) with default
 * parameter ranges based on Architecture Analysis profiling
 * of 20 real-world rover designs.
 *
 * Reference: Architecture Analysis Report §3
 * Version:   0.1.0-draft
 * Date:      2026-03-26
 */
package LORS_RoverClasses {

    import LORS_Types::*;
    import LORS_Interfaces::*;
    import LORS_System::*;

    // ═══════════════════════════════════════════════
    //  CLASS A — Heavy Utility (≥ 500 kg)
    // ═══════════════════════════════════════════════

    /**
     * Class A: Heavy Utility Rover
     * Examples: Astrolab FLEX, VIPER (canceled), LUPEX Rover
     *
     * Characteristics:
     *  - 1 kW+ deployable solar arrays (> 3 m²)
     *  - Multi-day battery reserves (> 10 kWh)
     *  - Direct-to-Earth steerable HGA (X/Ka-Band, > 10 Mbps)
     *  - Active suspension, > 30 cm obstacle clearance
     *  - ISO-compatible cargo bays
     *  - High-voltage power (120 V+) optional
     */
    part def ClassA_HeavyUtilityRover :> LORSCompliantRover {

        // Classification override
        :>> rover_class = RoverClass::ClassA_HeavyUtility;

        // ── Mass Envelope ──
        attribute min_dry_mass_kg : Real default 500.0;

        // ── Power ──
        redefines eps {
            :>> solar_array_area_m2     = 3.0;      // minimum
            :>> solar_power_W           = 1000.0;
            :>> battery_capacity_Wh     = 10000.0;
            :>> night_survival_rated    = true;
        }

        // ── Communications ──
        redefines comm {
            // Direct-to-Earth capable
            :>> earth_link : RFLinkPort {
                :>> band = FrequencyBand::X_Band;
            }
        }

        // ── Mobility ──
        redefines mobility {
            :>> max_speed_m_per_s    = 0.5;
            :>> obstacle_clearance_m = 0.30;
            :>> suspension_type      = "Active Rocker-Bogie";
        }

        // ── High-voltage infrastructure port (optional) ──
        port infrastructure_power : HighVoltagePowerPort;

        // ── ISO Heavy Mount for cargo ──
        port iso_cargo_mount : ISOHeavyMountPort;
    }

    // ═══════════════════════════════════════════════
    //  CLASS B — Micro-Prospector (5–15 kg)
    // ═══════════════════════════════════════════════

    /**
     * Class B: Micro-Prospector Rover
     * Examples: MAPP, CubeRover, TENACIOUS, ASAGUMO
     *
     * Characteristics:
     *  - Limited solar (5–10 W) or battery-centric
     *  - Single-day operational cycles
     *  - Short-range relay to lander (Wi-Fi / LTE)
     *  - Passive suspension, < 15 cm obstacle clearance
     *  - CubeSat bolt patterns + Micro-D connectors
     */
    part def ClassB_MicroProspectorRover :> LORSCompliantRover {

        :>> rover_class = RoverClass::ClassB_MicroProspector;

        // ── Mass Envelope ──
        attribute min_dry_mass_kg : Real default 5.0;
        attribute max_dry_mass_kg : Real default 15.0;

        // ── Power ──
        redefines eps {
            :>> solar_array_area_m2     = 0.1;
            :>> solar_power_W           = 10.0;
            :>> battery_capacity_Wh     = 200.0;
            :>> thermal_regime          = ThermalRegime::Daylight;
            :>> daylight_rated          = true;
            :>> night_survival_rated    = false;
        }

        // ── Communications ──
        redefines comm {
            :>> encryption = EncryptionStandard::AES256_NIST;
        }

        // ── Mobility ──
        redefines mobility {
            :>> wheel_count          = 4;
            :>> max_speed_m_per_s    = 0.1;
            :>> obstacle_clearance_m = 0.15;
            :>> suspension_type      = "Passive";
        }

        // ── Micro-D heritage connector ──
        port microd_connector : MicroDConnectorPort;
    }

    /**
     * Class B variant: Legged Micro-Prospector
     * Example: Spacebit ASAGUMO (lava tube exploration)
     */
    part def ClassB_LeggedRover :> ClassB_MicroProspectorRover {
        redefines mobility {
            :>> locomotion_type      = LocomotionType::Legged;
            :>> wheel_count          = 0;  // legs, not wheels
            :>> suspension_type      = "Articulated Legs";
        }

        redefines gnc {
            :>> slam_algorithm       = "RTAB-Map";
            :>> camera_count         = 4;   // 360° coverage for lava tubes
        }
    }

    // ═══════════════════════════════════════════════
    //  CLASS C — Nano / Swarm (< 5 kg)
    // ═══════════════════════════════════════════════

    /**
     * Class C: Nano / Swarm Rover
     * Examples: YAOKI, Colmena, CADRE, Sora-Q, Iris
     *
     * Characteristics:
     *  - Transient solar / capacitor systems
     *  - Extreme low voltage (3.3–12 V)
     *  - Mesh networking (rover-to-rover)
     *  - Minimal obstacle negotiation
     *  - Spring deployment from lander
     *  - Wireless-only after deployment
     */
    part def ClassC_NanoSwarmRover :> LORSCompliantRover {

        :>> rover_class = RoverClass::ClassC_NanoSwarm;

        // ── Mass Envelope ──
        attribute max_dry_mass_kg : Real default 5.0;

        // ── Power ──
        redefines eps {
            :>> solar_array_area_m2     = 0.02;
            :>> solar_power_W           = 2.0;
            :>> battery_capacity_Wh     = 20.0;
            :>> thermal_regime          = ThermalRegime::Daylight;
            :>> daylight_rated          = true;
            :>> night_survival_rated    = false;
            :>> cryo_rated              = false;
        }

        // ── Communications (mesh-native) ──
        redefines comm {
            :>> supports_dtn = true;
        }

        // ── Mobility ──
        redefines mobility {
            :>> locomotion_type      = LocomotionType::TumbleSphere;
            :>> max_speed_m_per_s    = 0.05;
            :>> obstacle_clearance_m = 0.05;
            :>> suspension_type      = "None / Body Tumble";
        }

        // ── Deployment ──
        port spring_deploy : DeploymentRailPort {
            :>> mechanism = DeploymentMechanism::TopMountSpring;
        }

        // ── Internal bus (lightweight) ──
        port sensor_bus : I2CBusPort;

        // ── Swarm coordination ──
        attribute swarm_size : Integer;
        attribute swarm_algorithm : String default "CADRE Consensus";
    }

    // ═══════════════════════════════════════════════
    //  CONCRETE LANDER SPECIALIZATIONS
    // ═══════════════════════════════════════════════

    /** Astrobotic Griffin lander — CLPS heavy class. */
    part def GriffinLander :> LunarLander {
        :>> provider           = "Astrobotic";
        :>> lander_model       = "Griffin";
        :>> payload_capacity_kg = 625.0;
        :>> deployment_type    = DeploymentMechanism::Ramp;

        redefines data_wired : EthernetDataPort {
            :>> speed_mbps = 100.0;
        }
        port legacy_serial : RS422DataPort;
        port spacewire     : SpaceWireDataPort;
    }

    /** Intuitive Machines Nova-C — CLPS micro class. */
    part def NovaCLander :> LunarLander {
        :>> provider           = "Intuitive Machines";
        :>> lander_model       = "Nova-C";
        :>> payload_capacity_kg = 130.0;
        :>> deployment_type    = DeploymentMechanism::SideMountedRail;

        redefines data_wireless : WiFiPort {
            :>> standard = WirelessProtocol::WiFi_802_11ac;
            :>> encryption = EncryptionStandard::AES256_NIST;
        }
        port lte_surface : LTEPort;
    }

    /** ispace APEX 1.0 — commercial delivery. */
    part def APEX1Lander :> LunarLander {
        :>> provider           = "ispace / Draper";
        :>> lander_model       = "APEX 1.0";
        :>> payload_capacity_kg = 500.0;
        :>> deployment_type    = DeploymentMechanism::Custom;

        port microd_legacy : MicroDConnectorPort;
    }

    /** Firefly Blue Ghost — CLPS utility class. */
    part def BlueGhostLander :> LunarLander {
        :>> provider           = "Firefly Aerospace";
        :>> lander_model       = "Blue Ghost";
        :>> payload_capacity_kg = 155.0;
        :>> deployment_type    = DeploymentMechanism::Custom;
    }

    /** SpaceX Starship HLS — infrastructure class. */
    part def StarshipHLSLander :> LunarLander {
        :>> provider           = "SpaceX";
        :>> lander_model       = "Starship HLS";
        :>> payload_capacity_kg = 100000.0;  // ~100 t
        :>> deployment_type    = DeploymentMechanism::ElevatorPlatform;

        port high_voltage_power : HighVoltagePowerPort;
    }
}
