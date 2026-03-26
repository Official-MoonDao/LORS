/**
 * LORS — Applicable Standards Catalog
 * ─────────────────────────────────────
 * Machine-readable catalog of every external standard, specification,
 * and reference document that governs LORS-compliant hardware.
 *
 * Source:  STANDARDS_AND_DOCS.MD
 * Version: 0.1.0-draft
 * Date:    2026-03-26
 */
package LORS_StandardsCatalog {

    import ScalarValues::String;

    // ═══════════════════════════════════════════════
    //  Metadata attribute for standards references
    // ═══════════════════════════════════════════════

    /** A single applicable standard or specification. */
    attribute def StandardReference {
        attribute id          : String;     // Short code, e.g. "MIL-STD-461G"
        attribute title       : String;
        attribute issuing_body: String;     // e.g. "NASA", "ESA", "CCSDS"
        attribute version     : String;
        attribute url         : String;     // Canonical download/info URL
        attribute domain      : String;     // e.g. "EMI/EMC", "Outgassing", "Comm"
    }

    // ═══════════════════════════════════════════════
    //  General Space Standards
    // ═══════════════════════════════════════════════

    attribute cubesat_standard : StandardReference {
        :>> id           = "CUBESAT-DS";
        :>> title        = "CubeSat Design Specification";
        :>> issuing_body = "Cal Poly / NASA";
        :>> version      = "Rev 14";
        :>> url          = "https://www.cubesat.org/cubesatinfo";
        :>> domain       = "Mechanical / Form Factor";
    }

    attribute idss : StandardReference {
        :>> id           = "IDSS-IDD-F";
        :>> title        = "International Docking System Standard";
        :>> issuing_body = "ISS Partners";
        :>> version      = "Rev F";
        :>> url          = "https://www.internationaldockingstandard.com/download/IDSS_IDD_Revision_F.pdf";
        :>> domain       = "Mechanical / Docking";
    }

    attribute icsis : StandardReference {
        :>> id           = "M2M-30202-ICSIS-B";
        :>> title        = "International Communication System Interoperability Standard";
        :>> issuing_body = "IDSS WG";
        :>> version      = "Rev B";
        :>> url          = "https://internationaldeepspacestandards.com/wp-content/uploads/2025/03/M2M-30202-ICSIS_RevB_Final.pdf";
        :>> domain       = "Communications";
    }

    attribute sois : StandardReference {
        :>> id           = "CCSDS-850.0-G-2";
        :>> title        = "Spacecraft Onboard Interface Services";
        :>> issuing_body = "CCSDS";
        :>> version      = "G-2";
        :>> url          = "https://public.ccsds.org/Pubs/850x0g2.pdf";
        :>> domain       = "Flight Software / Onboard";
    }

    attribute xtce : StandardReference {
        :>> id           = "CCSDS-660.0-B-2";
        :>> title        = "XML Telemetric and Command Exchange";
        :>> issuing_body = "CCSDS";
        :>> version      = "B-2";
        :>> url          = "https://public.ccsds.org/Pubs/660x0b2.pdf";
        :>> domain       = "Telemetry / Command Data";
    }

    // ═══════════════════════════════════════════════
    //  Lunar Interoperability Standards
    // ═══════════════════════════════════════════════

    attribute lunanet_lnis : StandardReference {
        :>> id           = "LNIS-v5";
        :>> title        = "LunaNet Interoperability Specification";
        :>> issuing_body = "NASA SCaN";
        :>> version      = "v5 Baseline";
        :>> url          = "https://www.nasa.gov/wp-content/uploads/2025/02/lunanet-interoperability-specification-v5-baseline.pdf";
        :>> domain       = "Lunar Communications / Navigation / Timing";
    }

    attribute dtn_bundle_protocol : StandardReference {
        :>> id           = "RFC-9171";
        :>> title        = "Bundle Protocol Version 7 (DTN)";
        :>> issuing_body = "IETF / CCSDS";
        :>> version      = "v7";
        :>> url          = "https://datatracker.ietf.org/doc/html/rfc9171";
        :>> domain       = "Delay-Tolerant Networking";
    }

    // ═══════════════════════════════════════════════
    //  Environmental & Testing Standards
    // ═══════════════════════════════════════════════

    attribute iso_10788 : StandardReference {
        :>> id           = "ISO-10788";
        :>> title        = "Lunar Simulants";
        :>> issuing_body = "ISO";
        :>> version      = "Current";
        :>> url          = "";
        :>> domain       = "Environmental / Regolith";
    }

    // ═══════════════════════════════════════════════
    //  Outgassing & Materials Standards
    // ═══════════════════════════════════════════════

    attribute astm_e595 : StandardReference {
        :>> id           = "ASTM-E595-15";
        :>> title        = "Total Mass Loss and CVCM from Outgassing";
        :>> issuing_body = "ASTM";
        :>> version      = "E595-15";
        :>> url          = "https://www.astm.org/e0595-15.html";
        :>> domain       = "Materials / Outgassing";
    }

    attribute nasa_std_6016 : StandardReference {
        :>> id           = "NASA-STD-6016";
        :>> title        = "Standard Materials and Processes Requirements for Spacecraft";
        :>> issuing_body = "NASA";
        :>> version      = "Current";
        :>> url          = "https://standards.nasa.gov/standard/nasa/nasa-std-6016";
        :>> domain       = "Materials / Processes";
    }

    attribute ecss_outgassing : StandardReference {
        :>> id           = "ECSS-Q-ST-70-02C";
        :>> title        = "Thermal Vacuum Outgassing Test for Space Materials";
        :>> issuing_body = "ESA / ECSS";
        :>> version      = "C";
        :>> url          = "https://ecss.nl/standard/ecss-q-st-70-02c-thermal-vacuum-outgassing-test-for-the-screening-of-space-materials/";
        :>> domain       = "Materials / Outgassing";
    }

    // ═══════════════════════════════════════════════
    //  EMI/EMC Standards
    // ═══════════════════════════════════════════════

    attribute mil_std_461g : StandardReference {
        :>> id           = "MIL-STD-461G";
        :>> title        = "Control of Electromagnetic Interference Characteristics";
        :>> issuing_body = "US DoD";
        :>> version      = "G";
        :>> url          = "https://quicksearch.dla.mil/qsDocDetails.aspx?ident_number=35634";
        :>> domain       = "EMI/EMC";
    }

    attribute ecss_emc : StandardReference {
        :>> id           = "ECSS-E-ST-20-07C-1";
        :>> title        = "Electromagnetic Compatibility";
        :>> issuing_body = "ESA / ECSS";
        :>> version      = "Rev 1";
        :>> url          = "https://ecss.nl/standard/ecss-e-st-20-07c-rev-1-electromagnetic-compatibility/";
        :>> domain       = "EMI/EMC";
    }

    // ═══════════════════════════════════════════════
    //  Connector Standards
    // ═══════════════════════════════════════════════

    attribute nasa_eee_inst_002 : StandardReference {
        :>> id           = "NASA-EEE-INST-002";
        :>> title        = "Standard for EEE Parts Selection and Screening";
        :>> issuing_body = "NASA";
        :>> version      = "Addendum 1";
        :>> url          = "https://nepp.nasa.gov/docuploads/FFB52B88-36AE-4378-A05B2C084B5EE2CC/EEE-INST-002_add1.pdf";
        :>> domain       = "EEE Parts / Connectors";
    }

    // ═══════════════════════════════════════════════
    //  Security Standards
    // ═══════════════════════════════════════════════

    attribute nist_800_53 : StandardReference {
        :>> id           = "NIST-SP-800-53";
        :>> title        = "Security and Privacy Controls for Information Systems";
        :>> issuing_body = "NIST";
        :>> version      = "Rev 5";
        :>> url          = "https://csrc.nist.gov/publications/detail/sp/800-53/rev-5/final";
        :>> domain       = "Cybersecurity";
    }
}
