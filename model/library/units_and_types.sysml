/**
 * LORS — Core Units, Value Types, and Enumerations
 * ──────────────────────────────────────────────────
 * Foundational type library for the Lunar Open-source Rover Standard.
 * All subsystem models import from this package.
 *
 * Reference: SI/ISQ via SysML v2 Kernel Library
 * Version:   0.1.0-draft
 * Date:      2026-03-26
 */
package LORS_Types {

    // ═══════════════════════════════════════════════
    //  Standard Imports (SysML v2 Kernel Library)
    // ═══════════════════════════════════════════════
    import ISQ::*;              // International System of Quantities
    import SI::*;               // SI unit definitions
    import ScalarValues::*;     // Real, Integer, Boolean, String

    // ═══════════════════════════════════════════════
    //  LORS-Specific Attribute Definitions
    // ═══════════════════════════════════════════════

    /** Mass expressed in kilograms with design-phase margin. */
    attribute def MassProperty :> ISQ::MassValue {
        attribute margin_percent : Real;        // Phase-dependent growth allowance
        attribute is_dry : Boolean;             // true = dry mass, false = wet mass
    }

    /** Electrical power in watts with mode annotation. */
    attribute def PowerProperty :> ISQ::PowerValue {
        attribute mode : OperationalMode;       // Mode in which this power applies
    }

    /** Temperature range for thermal qualification. */
    attribute def TemperatureRange {
        attribute min_temp_K : ISQ::ThermodynamicTemperatureValue;
        attribute max_temp_K : ISQ::ThermodynamicTemperatureValue;
    }

    /** Data rate in bits per second. */
    attribute def DataRateProperty {
        attribute rate_bps : Real;
        attribute protocol : DataProtocol;
    }

    /** Voltage rail specification. */
    attribute def VoltageRail {
        attribute nominal_V : Real;
        attribute min_V : Real;
        attribute max_V : Real;
        attribute tier : PowerBusTier;
    }

    /** Link margin in decibels. */
    attribute def LinkMarginProperty {
        attribute margin_dB : Real;
        attribute frequency_band : FrequencyBand;
    }

    /** Dimensional envelope in meters. */
    attribute def Envelope {
        attribute length_m : Real;
        attribute width_m  : Real;
        attribute height_m : Real;
    }

    // ═══════════════════════════════════════════════
    //  Enumerations
    // ═══════════════════════════════════════════════

    /** LORS rover size classification (from Architecture Analysis). */
    enum def RoverClass {
        enum ClassA_HeavyUtility;       // ≥ 500 kg
        enum ClassB_MicroProspector;    //   5–15 kg
        enum ClassC_NanoSwarm;          //   < 5 kg
    }

    /** Technology Readiness Level per NASA/ESA scale. */
    enum def TRL {
        enum TRL1; enum TRL2; enum TRL3;
        enum TRL4; enum TRL5; enum TRL6;
        enum TRL7; enum TRL8; enum TRL9;
    }

    /** Design maturity phase (sets margin policy). */
    enum def DesignPhase {
        enum PhaseA_Concept;        // 20–30 % mass margin
        enum PhaseB_Preliminary;    // 15–20 % mass margin
        enum PhaseC_Detailed;       //  5–10 % mass margin
        enum PhaseD_Integration;    //  0–5  % mass margin
    }

    /** Operational modes for power and C2 budgets. */
    enum def OperationalMode {
        enum Autonomous;
        enum RemoteControl;
        enum Safe;
        enum Maintenance;
        enum LunarNightSurvival;
        enum CryogenicDip;          // Permanently shadowed crater ops
    }

    /** Power bus voltage tiers (from Architecture Analysis §4.2). */
    enum def PowerBusTier {
        enum LowVoltage_12V;        // Nano-rovers, educational
        enum StandardVoltage_28V;   // Micro/utility (baseline)
        enum HighVoltage_120V;      // Heavy infrastructure
    }

    /** Communication frequency bands. */
    enum def FrequencyBand {
        enum S_Band;
        enum X_Band;
        enum Ka_Band;
        enum Optical;
        enum UHF;
    }

    /** Wired data protocols observed across lander ecosystem. */
    enum def WiredProtocol {
        enum RS422;
        enum SpaceWire;
        enum Ethernet;
        enum CAN;
        enum I2C;
        enum USB_C;
    }

    /** Wireless data protocols observed across lander ecosystem. */
    enum def WirelessProtocol {
        enum WiFi_802_11n;
        enum WiFi_802_11ac;
        enum LTE_4G;
        enum X_Band_Relay;
        enum Mesh_LoRa;
    }

    /** Aggregate data protocol (wired or wireless). */
    enum def DataProtocol {
        enum RS422;
        enum Ethernet;
        enum WiFi;
        enum LTE;
        enum SpaceWire;
        enum MAVLink;
        enum CCSDS;
        enum DTN_BundleProtocol;
    }

    /** Thermal regime classification for battery standards. */
    enum def ThermalRegime {
        enum Daylight;              // Solar heating extremes
        enum DayNight;              // Full lunation cycle
        enum Warm;                  // Peaks of eternal light / lava tubes
        enum Cryogenic;             // Permanently shadowed craters
    }

    /** Deployment mechanism types. */
    enum def DeploymentMechanism {
        enum Ramp;
        enum SideMountedRail;
        enum TopMountSpring;
        enum ElevatorPlatform;
        enum Custom;
    }

    /** Locomotion types. */
    enum def LocomotionType {
        enum Wheeled;
        enum Tracked;
        enum Legged;
        enum Hybrid;
        enum TumbleSphere;
        enum SkidSteer;
    }

    /** Encryption standards. */
    enum def EncryptionStandard {
        enum None;
        enum AES128;
        enum AES256_NIST;           // NIST 800-53 baseline
        enum ChaCha20;
        enum Custom;
    }

    /** Verification method per INCOSE/NASA convention. */
    enum def VerificationMethod {
        enum Test;
        enum Analysis;
        enum Inspection;
        enum Demonstration;
    }

    /** Requirement maturity status. */
    enum def RequirementStatus {
        enum Draft;
        enum Approved;
        enum Verified;
        enum Deleted;
    }
}
