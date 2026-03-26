/**
 * LORS — Analysis Instance Template
 * ───────────────────────────────────
 * This file is a TEMPLATE for mission-specific analysis instances.
 * It instantiates the budget requirements from
 * requirements/budget_requirements.sysml with actual values
 * for a specific mission design.
 *
 * The requirements (what the system SHALL do) live in:
 *   requirements/system_requirements.sysml   — qualitative
 *   requirements/budget_requirements.sysml   — quantitative
 *
 * This directory (analysis/) is for INSTANCE data:
 *   "For Mission X, here are the actual numbers."
 *
 * To use: copy this template to a mission-specific file,
 *         e.g. analysis/mission_alpha_budgets.sysml
 *
 * Version: 0.1.0-draft
 * Date:    2026-03-26
 */
package LORS_AnalysisTemplate {

    import LORS_Types::*;
    import LORS_System::*;
    import LORS_BudgetRequirements::*;

    doc /* ─────────────────────────────────────────────
         *  HOW TO USE THIS TEMPLATE
         * ─────────────────────────────────────────────
         *
         * 1. Copy this file for your specific mission:
         *      cp analysis/analysis_template.sysml \
         *         analysis/my_mission_budgets.sysml
         *
         * 2. Rename the package to your mission name.
         *
         * 3. Fill in the actual values for your rover design.
         *
         * 4. Run constraint evaluation to check compliance
         *    against the requirements.
         *
         * 5. Results feed into assessment_report.md
         *    per the Systems Engineering Assessment Skill.
         * ─────────────────────────────────────────────
         */

    // ═════════════════════════════════════════
    //  EXAMPLE: Class B Micro-Prospector
    //  Fill in actual values for your design.
    // ═════════════════════════════════════════

    /*
    part myRover : ClassB_MicroProspectorRover {

        // Mass
        :>> dry_mass = 8.5 [kg];         // CBE dry mass
        :>> wet_mass = 9.2 [kg];         // Including consumables
        :>> design_phase = DesignPhase::PhaseA_Concept;

        // Power
        redefines eps {
            :>> solar_power_W       = 12.0;
            :>> battery_capacity_Wh = 150.0;
        }

        // Allocated mass (including 30% Phase A margin)
        // 8.5 * 1.30 = 11.05 kg — must be < lander capacity
    }

    // Verify against REQ-MAS-001:
    //   8.5 * 1.30 = 11.05 ≤ allocated? ✅
    // Verify against REQ-MAS-003:
    //   8.5 kg, Class B → 5.0 ≤ 8.5 ≤ 15.0 ✅
    // Verify against REQ-PWR-010:
    //   12.0 W solar ≥ avg_load * 1.2 → depends on avg_load
    */
}
