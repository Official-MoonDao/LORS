---
name: report-standards-analysis
description: Specialized skill for analyzing institutional and commercial space standards to identify gaps and opportunities for LORS.
---

# Standards Analysis Reporter Skill

## Domain Knowledge
- **Source Documents**:
  - `STANDARDS_AND_DOCS.MD` (Primary index of standards)
  - `ROVER_SOFTWARE_PROPOSAL.MD`
  - `ROVER_COMMANDS.MD`
  - `reports/ARCHITECTURE_ANALYSIS.MD` (Technical architecture reference)
- **Primary Data Sources**:
  - `landers/` (Commercial provider integration specs)
  - `rovers/` (Reference implementations)
  - `SPACE_ENTITIES.MD`
- **External Framework Reference**:
  - **Institutional**: NASA (Artemis, CLPS), ESA (Argonaut), ISO 10788, ISO 14624.
  - **Commercial**: Astrobotic (Griffin/Peregrine PUG), Intuitive Machines (Nova-C/D PUG), ispace (HAKUTO-R/APEX PUG).
  - **Interoperability**: LunaNet Interoperability Specification (LNIS), CCSDS (SOIS, XTCE).

## Instructions
1. **Institutional Standards Review**:
   - Synthesize requirements from NASA, ESA, and ISO standards as listed in `STANDARDS_AND_DOCS.MD`.
   - Focus on environmental testing (ASTM E595, MIL-STD-810/461), lunar soil simulants (ISO 10788), and deep space interoperability.

2. **Commercial Framework Analysis**:
   - Decompose the integration requirements for **Astrobotic**, **ispace**, and **Intuitive Machines**.
   - Compare power buses (28V vs 120V), data interfaces (RS-422, Ethernet, LTE), and wireless protocols (Wi-Fi, 4G).
   - Reference specific lander profiles in `landers/` for technical grounding.

3. **Gap & Opportunity Analysis**:
   - Identify "Interface Frictions": Use findings from `reports/ARCHITECTURE_ANALYSIS.MD` to pinpoint where commercial providers disagree or diverge from institutional guidelines.
   - Pinpoint "Standardization Deserts": Where are there no current standards (e.g., standard deployment mechanisms for micro-rovers)?
   - Propose "LORS Bridging Solutions": How can LORS-compliant rovers bridge these gaps through abstraction or universal gateways?

4. **Report Writing Standards**:
   - **Academic/Scientific Rigor**: Use formal technical terminology. Ensure evidence-based conclusions.
   - **Clarity & Conciseness**: Avoid fluff. Use tables for comparative analysis.
   - **References**: Cite specific sections of `STANDARDS_AND_DOCS.MD` and internal lander/rover files.

5. **Analysis Output**:
   - **Target Output File**: `reports/STANDARDS_ANALYSIS.MD`
   - Structure the report to include:
     - Detailed matrix comparing commercial provider interfaces.
     - Summary of institutional compliance requirements.
     - A prioritized list of standardization opportunities for the LORS project.
