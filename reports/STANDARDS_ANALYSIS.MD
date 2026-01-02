# Standards Analysis Report
**Date**: 2026-01-02  
**Status**: Initial Draft / Baseline  
**Focus**: Institutional Standards & Commercial Framework Interoperability

## 1. Executive Summary

This report evaluates the current landscape of lunar exploration standards, bridging the gap between established institutional requirements (NASA, ESA, ISO) and the emerging commercial frameworks (ispace, Astrobotic, Intuitive Machines). The analysis aims to identify critical standardization opportunities for the **Lunar Open-source Rover Standard (LORS)**.

## 2. Institutional Standards Review (NASA, ESA, ISO)

Assessment of core regulatory and heritage standards:
- **Environmental**: ASTM E595 (Outgassing), ISO 10788 (Simulants).
- **Communication**: CCSDS, LunaNet Interoperability Specification (LNIS).
- **Materials**: NASA-STD-6016, ECSS-Q-ST-70-02C.

## 3. Commercial Framework Analysis

Technical comparison of primary delivery provider interfaces:
- **Astrobotic (Griffin/Peregrine)**: RS-422, SpaceWire, Wi-Fi, 28V Bus.
- **Intuitive Machines (Nova-C/D)**: Ethernet, 4G/LTE, AES-256 Security.
- **ispace (HAKUTO-R/APEX)**: RS-422 (Micro-D), X-Band relay.

## 4. Technical Integration Gaps

IDentified frictions between provider-specific implementations:
- [ ] Gap 1: Mechanical deployment inconsistency.
- [ ] Gap 2: Voltage tier fragmentation (28V vs 120V).
- [ ] Gap 3: Protocol silos (Serial vs Ethernet).

## 5. Opportunities for LORS Standardization

Priority areas for open-source standardization:
- [ ] Opportunity A: Universal Payload Gateway (Abstraction layer).
- [ ] Opportunity B: Standardized micro-rover mounting footprints.
- [ ] Opportunity C: Cross-provider security/key exchange baseline.

## 6. Conclusion & Recommendations

Final assessment and strategic roadmap for LORS integration with existing space standards.

## 7. References

- [`STANDARDS_AND_DOCS.MD`](../STANDARDS_AND_DOCS.MD)
- [`LUNAR_LANDERS.MD`](../LUNAR_LANDERS.MD)
- NASA LunaNet Interoperability Specification v5.
- Commercial Payload User Guides (PUGs).

---
*This report is a living document generated and updated using the `report-standards-analysis` skill.*
