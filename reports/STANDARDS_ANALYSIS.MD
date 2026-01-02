# Standards Analysis Report
**Date**: 2026-01-02  
**Status**: Comprehensive Baseline  
**Focus**: Institutional Standards Review & Commercial Framework Interoperability

## 1. Executive Summary

This report provides a systematic analysis of global space standards and commercial lunar frameworks to establish a foundation for the **Lunar Open-source Rover Standard (LORS)**. The analysis reveals a significant divergence between rigorous institutional requirements (NASA/ESA/ISO) and the agile, "modern IT" approaches of commercial providers (Intuitive Machines, SpaceX). 

**Key Finding**: LORS can catalyze the lunar economy by serving as a **Standardization Bridge**, providing abstraction layers that allow low-cost rovers to meet institutional safety/interoperability requirements while operating on diverse commercial lander platforms.

## 2. Institutional Standards Review (NASA, ESA, ISO)

Institutional standards focus on mission success, human safety (for Artemis builds), and long-term sustainability.

### 2.1 Environmental & Materials Standards
- **Outgassing (ASTM E595 / NASA-STD-6016)**: Essential for preventing instrument contamination. LORS rovers must target TML < 1.0% and CVCM < 0.1% to be compatible with all major landers[^1].
- **Lunar Simulants (ISO 10788)**: Standardizes soil analogues for mobility testing. LORS should mandate testing against ISO-compliant simulants to ensure cross-platform performance data reliability.
- **Thermal Vacuum (ECSS-Q-ST-70-02C)**: ESA's screening standard for space materials, emphasizing the need for robust thermal control systems in the ±150°C lunar environment.

### 2.2 Communication & Interoperability
- **LunaNet Interoperability Specification (LNIS v5)**: The primary framework for Cislunar navigation and timing. LNIS relies on **Bundle Protocol (DTN v7)**, which LORS must support for institutional mission compatibility.
- **CCSDS (SOIS & XTCE)**: Standardizes data exchange between flight software and hardware. XTCE adoption in LORS would ensure telemetry consistency across different ground segment providers.

## 3. Commercial Framework Analysis

Commercial providers are increasingly adopting terrestrial IT standards to reduce costs and increase bandwidth.

### 3.1 Interface Matrix: The "Big Three"

| Feature | Astrobotic (Griffin/Peregrine) | Intuitive Machines (Nova-C) | ispace (HAKUTO-R/APEX) |
| :--- | :--- | :--- | :--- |
| **Primary Data** | RS-422, SpaceWire | **Ethernet, Serial** | **RS-422 (Micro-D)** |
| **Wireless** | 802.11n Wi-Fi | **4G/LTE, 802.11ac** | X-Band Relay |
| **Power Bus** | 28 VDC Unregulated | 28 VDC | 28 VDC |
| **Security** | Standard Aerospace | **AES-256 (NIST 800-53)** | Standard Aerospace |
| **Heritage** | Peregrine M1 (2024) | IM-1 Odysseus (2024) | HAKUTO-R M1 (2023) |

### 3.2 Trend Analysis: The IT-ification of the Moon
Intuitive Machines' adoption of **Ethernet, 4G/LTE, and AES-256** represents a paradigm shift toward "Plug-and-Play" lunar integration. In contrast, ispace and Astrobotic retain legacy **RS-422/Serial** interfaces for high-reliability heritage systems[^2].

## 4. Technical Integration Gaps

The "Standardization Gap" identified in the [Architecture Analysis](ARCHITECTURE_ANALYSIS.MD) is further highlighted by the conflict between institutional rigor and commercial agility.

### 4.1 Protocol Fragmentation (Serial vs Ethernet)
Institutional standards (CCSDS) are often heavyweight, while commercial providers are split between legacy Serial and modern Ethernet.
- **Gap**: A rover built for an RS-422 lander (ispace) cannot be easily re-manifested on an Ethernet-centric lander (Intuitive Machines) without hardware redesign.

### 4.2 Mechanical Deployment Silos
- **Gap**: There is **zero standardization** in how a micro-rover (5-15kg) attaches to or deploys from a lander. Current designs range from spring-loaded ejectors (ispace) to side-mounted ramps (Astrobotic).

### 4.3 Security Inconsistency
- **Gap**: NASA/Institutional missions require high NIST-level encryption, which is natively supported by Intuitive Machines but requires custom implementations on other platforms.

## 5. Opportunities for LORS Standardization

### 5.1 The Universal Payload Gateway (UPG)
LORS should define a software/firmware abstraction layer—the **UPG**—that can tunnel data through RS-422, Ethernet, or LTE. This allows rover logic to remain standard regardless of the delivery provider[^3].

### 5.2 Standardized Mounting Footprints
LORS can promote **CubeSat-inspired mechanical standards**:
1.  **Micro-Class (5-15kg)**: 10cm x 10cm bolt grid.
2.  **Nano-Class (<5kg)**: Standardized spring-deployment canister (similar to P-PODs).

### 5.3 Power Abstraction
While 28V is the current consensus, LORS should provide reference designs for **DC-DC conversion layers** to handle the high-voltage (120V+) infrastructure class (Starship, Blue Moon) identified in the ecosystem analysis.

## 6. Conclusion & Recommendations

The path to a sustainable lunar economy requires bridging the gap between "Old Space" rigor and "New Space" agility. 

**Strategic Recommendations for LORS**:
1.  **Adopt AES-256 as Baseline**: Align with the highest commercial security standard (Intuitive Machines) to ensure future-proofing.
2.  **Prioritize Ethernet with Serial Emulation**: Focus on Ethernet as the primary protocol while maintaining Serial compatibility.
3.  **LunaNet Compliance**: Ensure all LORS-compliant rovers can operate within the LunaNet framework for DSN/Artemis compatibility.

## 7. References

- [1] ASTM E595 Outgassing Standards, [`STANDARDS_AND_DOCS.MD`](../STANDARDS_AND_DOCS.MD#L29)
- [2] Intuitive Machines Nova-C Payload User Guide (Reference via [`landers/NOVA_C.MD`](../landers/NOVA_C.MD))
- [3] LORS Architecture Analysis Report, [`reports/ARCHITECTURE_ANALYSIS.MD`](ARCHITECTURE_ANALYSIS.MD)
- [4] LunaNet Interoperability Specification v5, NASA (2024)
- [5] ISO 10788:2014 Space systems — Lunar simulants.

---
*This report was generated using the `report-standards-analysis` skill, synthesizing institutional requirements and commercial provider data.*
