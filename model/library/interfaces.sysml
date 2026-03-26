/**
 * LORS — Standard Interface Definitions
 * ──────────────────────────────────────
 * Defines the canonical port types, interface definitions, and
 * connection rules for LORS-compliant hardware.
 *
 * Derived from: Architecture Analysis Report §4–5
 * Reference:    STANDARDS_AND_DOCS.MD, Lander Interface Matrix
 * Version:      0.1.0-draft
 * Date:         2026-03-26
 */
package LORS_Interfaces {

    import LORS_Types::*;

    // ═══════════════════════════════════════════════
    //  PORT DEFINITIONS — Electrical
    // ═══════════════════════════════════════════════

    /**
     * Standard 28 VDC unregulated power port.
     * This is the LORS baseline power interface (most common
     * across 7 of 10 major lander platforms).
     */
    port def StandardPowerPort {
        attribute voltage : VoltageRail {
            :>> nominal_V = 28.0;
            :>> min_V     = 24.0;
            :>> max_V     = 34.0;
            :>> tier       = PowerBusTier::StandardVoltage_28V;
        }
        attribute max_current_A : Real;
    }

    /** Low-voltage power port for nano-rovers and educational platforms. */
    port def LowVoltagePowerPort {
        attribute voltage : VoltageRail {
            :>> nominal_V = 12.0;
            :>> min_V     = 10.0;
            :>> max_V     = 14.4;
            :>> tier       = PowerBusTier::LowVoltage_12V;
        }
        attribute max_current_A : Real;
    }

    /** High-voltage power port for infrastructure-class platforms. */
    port def HighVoltagePowerPort {
        attribute voltage : VoltageRail {
            :>> nominal_V = 120.0;
            :>> min_V     = 100.0;
            :>> max_V     = 140.0;
            :>> tier       = PowerBusTier::HighVoltage_120V;
        }
        attribute max_current_A : Real;
    }

    /** Regulated auxiliary power port (5 V / 3.3 V for electronics). */
    port def RegulatedAuxPowerPort {
        attribute nominal_V : Real;     // 5.0 or 3.3
        attribute max_current_A : Real;
    }

    /** USB-C Power Delivery port (emerging standard for payload I/F). */
    port def USBCPowerDeliveryPort {
        attribute max_watts : Real;     // Up to 240 W per USB PD 3.1
    }

    // ═══════════════════════════════════════════════
    //  PORT DEFINITIONS — Data / Communication
    // ═══════════════════════════════════════════════

    /** RS-422 serial data port (legacy aerospace standard). */
    port def RS422DataPort {
        attribute baud_rate : Real;     // Typical: 115200, 1e6
        attribute connector : String;   // e.g. "Micro-D 9-pin"
    }

    /** Ethernet data port (emerging standard per IM/ispace APEX). */
    port def EthernetDataPort {
        attribute speed_mbps : Real;    // 100 or 1000
        attribute connector : String;   // e.g. "RJ-45", "M12-D"
    }

    /** SpaceWire data port (Astrobotic Griffin heritage). */
    port def SpaceWireDataPort {
        attribute link_rate_mbps : Real;
    }

    /** CAN bus port (nano/swarm rovers, internal bus). */
    port def CANBusPort {
        attribute bitrate_kbps : Real;  // 250 or 1000
    }

    /** I2C bus port (nano-rovers, sensor buses). */
    port def I2CBusPort {
        attribute speed_mode : String;  // "Standard", "Fast", "HighSpeed"
    }

    /** Wi-Fi 802.11ac port (LORS baseline wireless). */
    port def WiFiPort {
        attribute standard : WirelessProtocol default WirelessProtocol::WiFi_802_11ac;
        attribute frequency_GHz : Real default 5.0;
        attribute max_data_rate_mbps : Real;
        attribute encryption : EncryptionStandard default EncryptionStandard::AES256_NIST;
    }

    /** 4G/LTE surface proximity port (Nokia/IM infrastructure). */
    port def LTEPort {
        attribute frequency_band : String;
        attribute max_data_rate_mbps : Real;
    }

    /** RF downlink/uplink port for Earth communication. */
    port def RFLinkPort {
        attribute band : FrequencyBand;
        attribute eirp_dBW : Real;
        attribute data_rate : DataRateProperty;
        attribute modulation : String;  // e.g. "QPSK", "8PSK"
        attribute coding : String;      // e.g. "LDPC 1/2", "Turbo 1/3"
    }

    // ═══════════════════════════════════════════════
    //  PORT DEFINITIONS — Mechanical
    // ═══════════════════════════════════════════════

    /** CubeSat-compatible bolt pattern (10 cm grid). */
    port def CubeSatMountPort {
        attribute grid_pitch_mm : Real default 100.0;
        attribute bolt_pattern  : String default "M3 x 4";
        attribute max_load_N    : Real;
    }

    /** Micro-D connector footprint (ispace heritage). */
    port def MicroDConnectorPort {
        attribute pin_count : Integer;
        attribute series    : String;   // e.g. "Glenair 801"
    }

    /** Heavy ISO mount for infrastructure-class rovers. */
    port def ISOHeavyMountPort {
        attribute iso_class    : String;    // e.g. "ISO 668 1CC"
        attribute max_load_kg  : Real;
        attribute lift_points  : Integer;
    }

    /** Deployment rail interface. */
    port def DeploymentRailPort {
        attribute mechanism : DeploymentMechanism;
        attribute max_rover_mass_kg : Real;
        attribute rail_length_mm : Real;
    }

    // ═══════════════════════════════════════════════
    //  INTERFACE DEFINITIONS — Standard Connections
    // ═══════════════════════════════════════════════

    /**
     * LORS Standard Payload Interface.
     * Combines CubeSat mechanical mount, 28 VDC power,
     * and dual data (RS-422 + Ethernet) connectivity.
     * This is the recommended baseline for micro-class rovers.
     */
    interface def LORS_StandardPayloadInterface {
        end payload_side : StandardPowerPort;
        end host_side    : StandardPowerPort;

        end payload_data_serial   : RS422DataPort;
        end host_data_serial      : RS422DataPort;

        end payload_data_ethernet : EthernetDataPort;
        end host_data_ethernet    : EthernetDataPort;

        end payload_mount : CubeSatMountPort;
        end host_mount    : CubeSatMountPort;
    }

    /**
     * Universal Payload Gateway.
     * Abstraction layer that translates between RS-422, Ethernet,
     * and LTE — enabling rovers to operate across all major lander
     * platforms without hardware changes.
     *
     * Ref: Architecture Analysis §4.3
     */
    interface def LORS_UniversalPayloadGateway {
        end legacy_serial   : RS422DataPort;
        end ethernet        : EthernetDataPort;
        end spacewire       : SpaceWireDataPort;
        end wifi            : WiFiPort;
        end lte             : LTEPort;

        doc /* The gateway performs protocol translation:
             *   RS-422 ↔ Ethernet
             *   Serial ↔ LTE tunneling
             *   SpaceWire ↔ Ethernet bridge
             * Encryption baseline: AES-256 (NIST 800-53).
             */
    }

    /**
     * Rover-to-Lander deployment interface.
     * Defines the mechanical + electrical handshake for egress.
     */
    interface def RoverLanderDeploymentInterface {
        end rover_side  : DeploymentRailPort;
        end lander_side : DeploymentRailPort;

        end rover_power  : StandardPowerPort;
        end lander_power : StandardPowerPort;

        end rover_data   : WiFiPort;
        end lander_data  : WiFiPort;
    }

    /**
     * Swappable Electronics Module interface.
     * Ref: DESIGN_GUIDE.MD §Swappable Electronics Modules
     */
    interface def SwappableModuleInterface {
        end module_side : CubeSatMountPort;
        end bay_side    : CubeSatMountPort;

        end module_power : StandardPowerPort;
        end bay_power    : StandardPowerPort;

        end module_data  : EthernetDataPort;
        end bay_data     : EthernetDataPort;

        attribute auto_handshake : Boolean default true;
        attribute hot_swappable  : Boolean default false;
    }

    /**
     * Rover-to-Rover mesh networking interface.
     * Ref: DESIGN_GUIDE.MD §Interoperability & Mesh Networks
     */
    interface def MeshNetworkInterface {
        end node_a : WiFiPort;
        end node_b : WiFiPort;

        attribute mesh_protocol : DataProtocol default DataProtocol::DTN_BundleProtocol;
        attribute shared_data_format : String default "LORS-SitAware-v1";

        doc /* Shared situational awareness data:
             *  - Position (lat, lon, altitude)
             *  - Obstacle map delta
             *  - Battery state-of-charge
             *  - Thermal status
             */
    }
}
