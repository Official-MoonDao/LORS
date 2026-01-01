# Architecture Analysis Report
**Date**: 2026-01-02  
**Status**: Initial Baseline  
**Focus**: Interface Standardization & Ecosystem Analysis

## 1. Executive Summary
The lunar exploration ecosystem is witnessing a transition from custom, one-off scientific architectures to modular commercial delivery systems. However, a significant "Interface Gap" exists between the various provider standards (Astrobotic, Intuitive Machines, ispace, Firefly), hindering the rapid development of low-cost, interoperable payloads and rovers. This report decomposes the technical architecture of current lunar assets to identify standard patterns for the LORS project.

## 2. Lander Interface Matrix
The following table compares the primary "Gatekeeper" interfaces that any LORS-compliant rover or payload must navigate.

| Provider / Lander | Primary Earth-to-Moon | Payload Wired Interface | Wireless Surface Link | Data Security |
| :--- | :--- | :--- | :--- | :--- |
| **Astrobotic (Griffin)** | X-Band (DSN/SSC) | RS-422, SpaceWire | 802.11n Wi-Fi | Standard |
| **Intuitive Machines (Nova-C)** | S-Band (LDN) | Ethernet, Serial | **802.11ac Wi-Fi / LTE** | **AES-256 (NIST)** |
| **ispace (HAKUTO-R)** | X-Band (ESA/ESA) | RS-422 (Micro-D) | X-Band Relay | Standard |
| **Firefly (Blue Ghost)** | X-Band / S-Band (SSC) | Standard Elec/Data | 802.11 Wi-Fi | High Bandwidth |
| **ESA (Argonaut)** | X-Band / S-Band | CPE Standard (Modular) | Gateway Relay | Infrastructure-Grade |

### **Key Architectural Disparities:**
*   **Protocol Conflict**: The industry is split between legacy **RS-422/Serial** (ispace, Astrobotic) and modern **Ethernet/LTE** architectures (Intuitive Machines).
*   **Wireless Fragmentation**: While 2.4 GHz/5 GHz Wi-Fi is common, the emergence of **3GPP/LTE** (Nokia/Lunar Outpost) introduces a complex infrastructure requirement not yet supported by all landers.
*   **Encryption Gaps**: Only Intuitive Machines explicitly mandates **AES-256 (NIST 800-53)** hardware encryption, creating a security mismatch for sensitive commercial payloads.

## 3. Rover Subsystem Analysis
Deconstructing the 19 profiled rovers identifies clear "Classes" based on technical capability.

### **Class A: Heavy Utility (e.g., Astrolab FLEX, VIPER)**
*   **Power**: High-output (1kW+), deployable solar arrays (>3m²).
*   **Comms**: Direct-to-Earth (DTE) steerable High-Gain Antennas.
*   **Mobility**: Active suspension, "inch-worming," or hyper-deformable wheels.
*   **Interface**: Heavy/Modular cargo bays (ISO-style containers).

### **Class B: Micro-Prospectors (e.g., MAPP, CubeRover, Tenacious)**
*   **Power**: Limited solar (5-10W), battery-centric operations.
*   **Comms**: Short-range relays (Wi-Fi/LTE) to lander.
*   **Mobility**: Independent 4-wheel drive, passive suspension.
*   **Interface**: Small payload decks (CubeSat-standard bolt patterns).

### **Class C: Nano / Swarm (e.g., YAOKI, Colmena, CADRE)**
*   **Power**: Transient (solar/cap), extreme low voltage.
*   **Comms**: Mesh networking (Rover-to-Rover) + passive lander relay.
*   **Mobility**: 2-wheel tumble or sphere transformation.

## 4. The "Standardization Gap"
Based on the analysis, the LORS project should prioritize the following standards to bridge provider silos:

1.  **Mechanical**: Standardized "Micro-D" footprints for micro-rovers and ISO-lift points for heavy rovers.
2.  **Electrical**: Unregulated **28 VDC** is the most common bus voltage (Nova-C/Blue Ghost), serving as a viable LORS candidate.
3.  **Data**: A "Universal Payload Gateway" concept that can translate **RS-422** to **Ethernet/LTE** is required for across-provider interoperability.
4.  **Security**: Adoption of a baseline **AES-256** software/hardware standard to match the highest provider requirements (IM).

## 5. Conclusion
The current architecture is highly capable but siloed. LORS-compliant hardware must be **electrically flexible** (handling voltage ripples) and **data-agnostic** (capable of Ethernet or Serial tunneling) to thrive in the 2026-2030 lunar commercial landscape.

---
*This report was generated using the `report-architecture-analysis` skill based on refined technical metrics of 12 landers and 19 rovers.*
