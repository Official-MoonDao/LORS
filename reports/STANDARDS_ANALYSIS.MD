# Standards Analysis Report
**Date**: 2026-01-02  
**Status**: Revised Technical Baseline  
**Focus**: Cross-Sector Adoption Analysis & Research Gap Identification

## 1. Executive Summary

This report analyzes the adoption of space industry standards by governmental and commercial entities to establish the **Lunar Open-source Rover Standard (LORS)**. The primary challenge identified is the "Abstraction Gap": governmental standards provide high reliability but high complexity, while commercial practices prioritize speed and cost, often creating proprietary silos.

LORS aims to resolve this by identifying **De Facto Standards** that bridge both sectors, while cataloging **TBD (To Be Defined)** areas where documentation is currently insufficient for open-source development.

## 2. Standards Adoption Matrix

This matrix compares the enforcement and adoption levels of key standards across Governmental (NASA, ESA, CNSA) and Commercial (SpaceX, Intuitive Machines, Astrobotic) sectors.

| Standard Category | Primary Specification | Adoption: Gov | Adoption: Com | LORS Status |
| :--- | :--- | :--- | :--- | :--- |
| **Environmental** | ASTM E595 (Outgassing) | Mandatory | High (Tailored) | *De Facto Standard* |
| **Environmental** | MIL-STD-461G (EMI/EMC) | Mandatory | Moderate (Tailored) | *Institutional Requirement* |
| **Data Link** | CCSDS (AOS/DVB-S2) | Standard | Low/Moderate | *Emerging Practice* |
| **Network** | TCP/IP / Ethernet | Low (Legacy) | High | *Commercial Baseline* |
| **Interoperability** | LunaNet (LNIS v5) | Primary Owner | Emerging | *Strategic Target* |
| **Hardware** | CubeSat (1U-12U) | Standard | Standard | *Universal Baseline* |
| **Power** | 28 VDC (Unregulated) | Legacy | High | *Commercial Standard* |
| **Security** | AES-256 (NIST 800-53) | High | Varied (IM High) | *Recommended Baseline* |

### 2.1 Adoption Insights
- **Governmental Context**: Focuses on extreme-long-term reliability (10+ years) and safety-critical multi-agency interoperability.
- **Commercial Context**: Focuses on short-duration success (1 lunar day) and cost-reduction, often bypassing heavyweight CCSDS protocols in favor of "Lander-to-Ground" encapsulation.

## 3. Technical Integration Gaps

### 3.1 Protocol Fragmentation
Commercial providers like **Intuitive Machines** utilize **Ethernet**, while legacy institutional assets and providers like **ispace** rely on **RS-422/Serial**. 
- **Gap**: Lack of a "Universal Driver" that abstracts the physical layer for rovers.

### 3.2 Deployment Mechanisms
There is currently **zero cross-platform standardization** for how a rover physically detaches from a lander deck. Every provider uses a proprietary latch or ramp system.
- **Gap**: A LORS rover requires a "Standard Mounting Interface" similar to the P-POD for CubeSats.

### 3.3 Thermal Interface Standards
While thermal vacuum testing (ASTM E595) is standard, the actual *thermal coupling* between lander and rover is not standardized.
- **Gap**: Rovers are often responsible for their own survival without clear "Thermal Handshake" protocols from the lander.

## 4. Missing Information & Research TBDs

The following areas require urgent research to complete the LORS technical baseline.

| Area | Status | Missing Information / Research Required |
| :--- | :--- | :--- |
| **Deployment Mechanisms** | **[TBD]** | Cataloging of all current latch/actuator interfaces to design a "Common LORS Plate". |
| **International PUGs** | **[RESEARCH REQUIRED]** | Detailed technical specs for **CNSA (Chang'e)** and **Roscosmos (Angara)** interfaces are proprietary/restricted. |
| **Radiation Tolerances** | **[TBD]** | Definition of "Standard Lunar Radiation Dose" for commercial COTS electronics and expected SEU rates. |
| **Dust Mitigation** | **[RESEARCH REQUIRED]** | Standardized mechanical seal requirements to prevent Regolith ingress in joint systems. |
| **Lunar 4G/LTE** | **[EMERGING]** | Finalized signal-in-space specifications for Nokia/Lunar Outpost network interoperability. |

## 5. LORS Strategic Recommendations

1.  **Develop the LORS Physical Abstraction Layer (PAL)**: A standardized hardware connector (likely Micro-D or similar) that carries both Serial and Ethernet signals to ensure multi-lander compatibility.
2.  **Formalize the "LORS Mounting Plate"**: Propose a standardized bolt pattern and electrical "Quick-Disconnect" interface to commercial lander providers.
3.  **Prioritize COTS-Ready Environmental Testing**: Adopt a "Testing-Light" standard for short-duration rovers that utilizes MIL-STD-810/461 tailoring rather than full institutional qualification.

## 6. References

- [1] `STANDARDS_AND_DOCS.MD`, Space Industry Standards Index.
- [2] `landers/NOVA_C.MD`, Intuitive Machines Technical Specs.
- [3] `landers/BLUE_GHOST.MD`, Firefly Aerospace Mission 1 Analysis.
- [4] NASA-STD-6016, Standard Materials and Processes Requirements for Spacecraft.
- [5] LunaNet Interoperability Specification, v5 Baseline (2024).

---
*This report was updated to reflect current adoption statuses and identify critical research gaps (TBDs) in the LORS framework.*
