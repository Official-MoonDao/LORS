/**
 * LORS — Budget Requirements
 * ───────────────────────────
 * Formal requirements for mass, power, link, thermal, materials,
 * and modularity budgets. Each requirement contains an embedded
 * constraint expression that can be automatically evaluated
 * against a design instance.
 *
 * Restructured from analysis/budgets.sysml:
 *   constraint def → requirement def (with require constraint)
 *
 * These are the normative rules a LORS-compliant design SHALL meet.
 * Instance-level analysis results (actual numbers for a specific
 * mission) belong in analysis/.
 *
 * Reference: Systems Engineering Assessment Skill, DESIGN_GUIDE.MD
 * Version:   0.1.0-draft
 * Date:      2026-03-26
 */
package LORS_BudgetRequirements {

    import LORS_Types::*;
    import LORS_System::*;

    // ═══════════════════════════════════════════════
    //  1. MASS BUDGET REQUIREMENTS
    // ═══════════════════════════════════════════════

    /**
     * Mass growth allowance per design phase.
     * Per NASA/AIAA standard mass margin policy.
     */
    requirement def <'REQ-MAS-001'> MassMarginRequirement {
        doc /* Source: NASA/AIAA Mass Growth Allowance, SE Assessment Skill
             * The allocated mass must include the phase-appropriate
             * growth factor above current best estimate (CBE).
             */

        subject rover : LORSCompliantRover;

        text = "The system mass budget shall include growth allowance "
               "per design phase: Phase A ≥ 30%, Phase B ≥ 20%, "
               "Phase C ≥ 10%, Phase D ≥ 5% above current best "
               "estimate (CBE) dry mass.";

        attribute verification : VerificationMethod = VerificationMethod::Analysis;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;
        attribute parent       : String = "REQ-MIS-002";  // Cost Reduction (drives efficient margins)

        require constraint MassMarginPolicy {
            in phase            : DesignPhase = rover.design_phase;
            in current_mass_kg  : Real = rover.dry_mass.numericalValue;
            in allocated_mass_kg : Real;

            (phase == DesignPhase::PhaseA_Concept      implies current_mass_kg * 1.30 <= allocated_mass_kg) &&
            (phase == DesignPhase::PhaseB_Preliminary   implies current_mass_kg * 1.20 <= allocated_mass_kg) &&
            (phase == DesignPhase::PhaseC_Detailed      implies current_mass_kg * 1.10 <= allocated_mass_kg) &&
            (phase == DesignPhase::PhaseD_Integration   implies current_mass_kg * 1.05 <= allocated_mass_kg)
        }
    }

    /**
     * Rover wet mass must not exceed lander delivery capacity.
     */
    requirement def <'REQ-MAS-002'> LanderMassCompatibility {
        doc /* Source: Architecture Analysis §2, Lander Interface Matrix */

        subject rover  : LORSCompliantRover;

        text = "The rover total wet mass (including propellant, "
               "consumables, and payload) shall not exceed the "
               "payload capacity of the target lander platform.";

        attribute verification : VerificationMethod = VerificationMethod::Analysis;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;

        require constraint LanderMassCapacity {
            in rover_wet_mass_kg  : Real = rover.wet_mass.numericalValue;
            in lander_capacity_kg : Real;

            rover_wet_mass_kg <= lander_capacity_kg
        }
    }

    /**
     * Rover dry mass must fall within its declared class range.
     */
    requirement def <'REQ-MAS-003'> ClassMassRange {
        doc /* Source: Architecture Analysis §3.1–3.3 */

        subject rover : LORSCompliantRover;

        text = "The rover dry mass shall fall within the defined "
               "range for its declared class: "
               "Class A (Heavy Utility) ≥ 500 kg, "
               "Class B (Micro-Prospector) 5–15 kg, "
               "Class C (Nano/Swarm) < 5 kg.";

        attribute verification : VerificationMethod = VerificationMethod::Inspection;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;

        require constraint ClassMassValidation {
            in rover_class : RoverClass = rover.rover_class;
            in dry_mass_kg : Real = rover.dry_mass.numericalValue;

            (rover_class == RoverClass::ClassA_HeavyUtility   implies dry_mass_kg >= 500.0) &&
            (rover_class == RoverClass::ClassB_MicroProspector implies dry_mass_kg >= 5.0 && dry_mass_kg <= 15.0) &&
            (rover_class == RoverClass::ClassC_NanoSwarm       implies dry_mass_kg < 5.0)
        }
    }

    // ═══════════════════════════════════════════════
    //  2. POWER BUDGET REQUIREMENTS
    // ═══════════════════════════════════════════════

    /**
     * Solar generation must exceed average load with margin.
     */
    requirement def <'REQ-PWR-010'> PowerPositiveMargin {
        doc /* Source: Power Assessment Skill, SE Assessment Skill */

        subject eps : ElectricalPowerSubsystem;

        text = "During sunlit operations, the solar array power "
               "output at end-of-life (EOL) shall exceed the "
               "orbit-average power load by a minimum factor "
               "of 1.2 (20% margin).";

        attribute verification : VerificationMethod = VerificationMethod::Analysis;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;
        attribute parent       : String = "REQ-PWR-001";  // Standard Voltage Bus (parent power req)

        require constraint PowerMarginCheck {
            in solar_power_W  : Real = eps.solar_power_W;
            in average_load_W : Real;
            in margin_factor  : Real = 1.2;

            solar_power_W >= average_load_W * margin_factor
        }
    }

    /**
     * Battery must support eclipse/shadow operations.
     */
    requirement def <'REQ-PWR-011'> EclipseBatteryCapacity {
        doc /* Source: Power Assessment Skill */

        subject eps : ElectricalPowerSubsystem;

        text = "The battery usable capacity (accounting for maximum "
               "depth-of-discharge) shall support the eclipse/shadow "
               "power load for the full shadow duration without "
               "reaching cutoff voltage.";

        attribute verification : VerificationMethod = VerificationMethod::Test;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;
        attribute parent       : String = "REQ-PWR-003";  // Battery Thermal Regimes

        require constraint EclipseEnergy {
            in battery_capacity_Wh : Real = eps.battery_capacity_Wh;
            in eclipse_load_W      : Real;
            in eclipse_duration_h  : Real;
            in max_dod_fraction    : Real = 0.80;

            battery_capacity_Wh * max_dod_fraction >= eclipse_load_W * eclipse_duration_h
        }
    }

    /**
     * Lunar night survival energy budget.
     */
    requirement def <'REQ-PWR-012'> LunarNightSurvivalEnergy {
        doc /* Source: DESIGN_GUIDE.MD §Battery Standards,
             *         Thermal Assessment Skill
             */

        subject eps : ElectricalPowerSubsystem;

        text = "For rovers rated for lunar night survival, the "
               "battery usable capacity shall sustain the survival "
               "heater power for a full lunar night (~354 hours) "
               "at no more than 80% depth-of-discharge.";

        attribute verification : VerificationMethod = VerificationMethod::Test;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;
        attribute parent       : String = "REQ-PWR-003";  // Battery Thermal Regimes

        require constraint NightSurvivalEnergy {
            in battery_capacity_Wh : Real = eps.battery_capacity_Wh;
            in heater_power_W      : Real;
            in night_duration_h    : Real = 354.0;
            in max_dod_fraction    : Real = 0.80;

            battery_capacity_Wh * max_dod_fraction >= heater_power_W * night_duration_h
        }
    }

    // ═══════════════════════════════════════════════
    //  3. LINK BUDGET REQUIREMENTS
    // ═══════════════════════════════════════════════

    /**
     * Minimum link margin for reliable communication.
     */
    requirement def <'REQ-LNK-001'> MinimumLinkMargin {
        doc /* Source: Communications Assessment Skill,
             *         CCSDS link design practice
             */

        subject comm : CommunicationsSubsystem;

        text = "All communication links (Earth, relay, surface) "
               "shall maintain a minimum link margin of 3 dB "
               "under worst-case conditions (maximum range, "
               "minimum elevation, rain attenuation for ground).";

        attribute verification : VerificationMethod = VerificationMethod::Analysis;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;

        require constraint LinkMarginCheck {
            in calculated_margin_dB : Real;
            in required_margin_dB   : Real = 3.0;

            calculated_margin_dB >= required_margin_dB
        }
    }

    /**
     * Science data volume must be downlinkable within ops window.
     */
    requirement def <'REQ-LNK-002'> DataVolumeDownlink {
        doc /* Source: Communications Assessment Skill */

        subject comm : CommunicationsSubsystem;

        text = "The total science data volume generated during "
               "surface operations shall be fully downlinkable "
               "within the available ground contact window.";

        attribute verification : VerificationMethod = VerificationMethod::Analysis;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;

        require constraint DataVolumeCheck {
            in total_data_Mbit    : Real;
            in downlink_rate_Mbps : Real;
            in available_contact_h : Real;

            total_data_Mbit <= downlink_rate_Mbps * available_contact_h * 3600.0
        }
    }

    // ═══════════════════════════════════════════════
    //  4. THERMAL BUDGET REQUIREMENTS
    // ═══════════════════════════════════════════════

    /**
     * Component temperature qualification.
     */
    requirement def <'REQ-THM-001'> ThermalQualification {
        doc /* Source: Thermal Assessment Skill,
             *         ROVER_SOFTWARE_PROPOSAL.MD §9
             */

        subject thermal : ThermalControlSubsystem;

        text = "All components shall be qualified for operation "
               "within the lunar surface thermal environment. "
               "Component qualified range shall encompass the "
               "predicted worst-case hot and cold temperatures "
               "with at least 10°C qualification margin.";

        attribute verification : VerificationMethod = VerificationMethod::Test;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;
        attribute parent       : String = "REQ-ENV-001";  // Thermal Operating Range

        require constraint ThermalEnvelope {
            in component_min_K   : Real;
            in component_max_K   : Real;
            in environment_min_K : Real = 93.0;   // -180°C
            in environment_max_K : Real = 393.0;  // +120°C

            component_min_K <= environment_min_K &&
            component_max_K >= environment_max_K
        }
    }

    // ═══════════════════════════════════════════════
    //  5. MATERIALS BUDGET REQUIREMENTS
    // ═══════════════════════════════════════════════

    /**
     * Outgassing acceptance criteria.
     * Supersedes REQ-ENV-002 by adding the quantitative constraint.
     */
    requirement def <'REQ-MAT-001'> OutgassingAcceptance {
        doc /* Source: STANDARDS_AND_DOCS.MD §Outgassing,
             *         ASTM E595-15
             */

        text = "All materials used in LORS-compliant hardware shall "
               "meet ASTM E595 outgassing criteria: Total Mass Loss "
               "(TML) < 1.0% and Collected Volatile Condensable "
               "Materials (CVCM) < 0.1%.";

        attribute verification : VerificationMethod = VerificationMethod::Test;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;

        require constraint ASTM_E595 {
            in tml_percent  : Real;
            in cvcm_percent : Real;

            tml_percent  < 1.0 &&
            cvcm_percent < 0.1
        }
    }

    // ═══════════════════════════════════════════════
    //  6. MODULARITY BUDGET REQUIREMENTS
    // ═══════════════════════════════════════════════

    /**
     * Full Deck catalog sizing.
     * Supersedes REQ-MOD-002 by adding the quantitative constraint.
     */
    requirement def <'REQ-CAT-001'> FullDeckCatalogSizing {
        doc /* Source: DESIGN_GUIDE.MD §Full Deck Design Philosophy */

        text = "The LORS component catalog shall contain 35–60 "
               "principal components organized across 5–9 categories, "
               "targeting the ~50 component / ~7 category 'Full Deck' "
               "cognitive limit for designer efficiency.";

        attribute verification : VerificationMethod = VerificationMethod::Inspection;
        attribute status       : RequirementStatus  = RequirementStatus::Draft;
        attribute parent       : String = "REQ-MIS-002";  // Cost Reduction

        require constraint FullDeckBounds {
            in total_components : Integer;
            in total_categories : Integer;

            total_components >= 35 && total_components <= 60 &&
            total_categories >= 5  && total_categories <= 9
        }
    }
}
