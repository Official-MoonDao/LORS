# Ecosystem Mapping Report
**Date**: 2026-01-02  
**Status**: Updated Baseline  
**Focus**: Comprehensive Project Profiles & Delivery Provider Assessment

## 1. Executive Summary

This document maps the relationships between lunar rovers, their developers, and the landers that deliver them. The ecosystem analysis reveals a maturing commercial lunar economy with **20+ active rover projects** and **7 major delivery providers**, spanning nano-class swarms to heavy infrastructure platforms. The primary trends include: (1) **Micro-Swarms** for cost-effective scouting, (2) **Heavy Logistics** for sustained infrastructure, and (3) **Specialized Robotics** for construction and maintenance tasks.

**Key Finding**: The lunar mobility ecosystem is transitioning from one-off scientific missions to a **multi-provider, multi-class commercial marketplace** with emerging standardization pressures.

## 2. Rover Project Profiles

The following **12 representative projects** span the full spectrum of lunar mobility capabilities, from nano-class explorers to heavy utility platforms.

| Project | Developer | Class | Mass (kg) | Status | Primary Mission | Reference |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **MAPP** | Lunar Outpost | Micro | 10 | Flight-Ready | IM-2 Athena | [`rovers/MAPP.MD`](../rovers/MAPP.MD) |
| **FLEX** | Venturi Astrolab | Heavy | 500+ | Planned | Griffin M1 / Starship | [`rovers/ASTROLAB_FLEX.MD`](../rovers/ASTROLAB_FLEX.MD) |
| **TENACIOUS** | ispace-EUROPE | Micro | 5 | Flight-Ready | HAKUTO-R M2 | [`rovers/TENACIOUS.MD`](../rovers/TENACIOUS.MD) |
| **CADRE** | NASA JPL | Swarm | 13 (each) | Planned | IM-3 Nova-C | [`rovers/CADRE.MD`](../rovers/CADRE.MD) |
| **YAOKI** | Dymon | Nano | 0.5 | Flight-Ready | IM-1 / IM-2 | [`rovers/YAOKI.MD`](../rovers/YAOKI.MD) |
| **ASAGUMO** | Spacebit | Micro | 1.3 | Planned | Peregrine M2 | [`rovers/ASAGUMO.MD`](../rovers/ASAGUMO.MD) |
| **GITAI R1** | GITAI | Utility | TBD | Prototype | Infrastructure | [`rovers/GITAI_R1.MD`](../rovers/GITAI_R1.MD) |
| **LUPEX Rover** | JAXA | Utility | 350 | Planned | LUPEX (ISRO) | [`rovers/LUPEX_ROVER.MD`](../rovers/LUPEX_ROVER.MD) |
| **Sora-Q** | JAXA | Nano | 0.25 | Success | SLIM (2024) | [`rovers/SORA_Q.MD`](../rovers/SORA_Q.MD) |
| **Iris** | CMU | Nano | 2 | Flown (Lost) | Peregrine M1 | [`rovers/IRIS.MD`](../rovers/IRIS.MD) |
| **CubeRover** | Astrobotic | Micro | 10 | Planned | Griffin M1 | [`rovers/CUBEROVER.MD`](../rovers/CUBEROVER.MD) |
| **HEMIUNU-01** | FUTURA | Utility | 250 | Prototype | Infrastructure | [`rovers/HEMIUNU_01.MD`](../rovers/HEMIUNU_01.MD) |

### 2.1 Emerging Specializations

**Walking Rovers**: ASAGUMO represents a new class of **legged mobility systems** designed for lava tube and cave exploration, utilizing 4 spider-like legs and LiDAR-based navigation[^1].

**Construction Robotics**: GITAI R1 introduces **robotic manipulation** capabilities for lunar infrastructure tasks including solar panel assembly, mining inspection, and cable connection[^2].

**Educational Platforms**: Projects like Lunar Zebro demonstrate the growing role of **university-led nano-rovers** in advancing lunar exploration technology[^3].

## 3. Delivery Provider Assessment

A comprehensive analysis of **7 primary delivery providers** representing the full spectrum of lunar surface access capabilities.

### **Astrobotic (USA)**
*   **Capacity**: 90kg (Peregrine) to 475kg (Griffin)
*   **Interface Standard**: RS-422, SpaceWire, 802.11n Wi-Fi
*   **Power**: 28 VDC unregulated bus
*   **Strategy**: "The Heavy Hauler" – Multi-rover deployments (Griffin M1 carrying FLEX + CubeRovers)
*   **Reference**: [`landers/GRIFFIN.MD`](../landers/GRIFFIN.MD), [`landers/PEREGRINE.MD`](../landers/PEREGRINE.MD)

### **Intuitive Machines (USA)**
*   **Capacity**: 130kg (Nova-C) to 1500kg (Nova-D)
*   **Interface Standard**: **Ethernet, 4G/LTE, 802.11ac Wi-Fi**
*   **Security**: AES-256 (NIST 800-53) encryption
*   **Strategy**: "The High-Bandwidth Node" – Commercial standards and encrypted data relay
*   **Heritage**: Successful IM-1 Odysseus landing (2024)
*   **Reference**: [`landers/NOVA_C.MD`](../landers/NOVA_C.MD), [`landers/NOVA_D.MD`](../landers/NOVA_D.MD)

### **ispace (Japan / U.S. / Europe)**
*   **Capacity**: 30kg (Series 1) to 300kg+ (APEX 1.0)
*   **Interface Standard**: RS-422 (Micro-D), X-Band relay
*   **Strategy**: "The Global Network" – Regional subsidiaries (US/Europe) for CLPS and government contracts
*   **Reference**: [`landers/HAKUTO_R.MD`](../landers/HAKUTO_R.MD), [`landers/APEX_1.MD`](../landers/APEX_1.MD)

### **Firefly Aerospace (USA)**
*   **Capacity**: 150kg (Blue Ghost)
*   **Interface Standard**: X-Band/S-Band high bandwidth, 802.11 Wi-Fi
*   **Strategy**: "The Farside Specialist" – Elytra orbital relay for farside communications
*   **Reference**: [`landers/BLUE_GHOST.MD`](../landers/BLUE_GHOST.MD)

### **Blue Origin (USA)**
*   **Capacity**: 3,000kg (MK1) to Heavy HLS (MK2)
*   **Power**: LH2/LOX high power (1kW - 100kW)
*   **Strategy**: "Infrastructure Class" – ISRU and pre-habitation logistics for Artemis
*   **Reference**: [`landers/BLUE_MOON_MK1.MD`](../landers/BLUE_MOON_MK1.MD)

### **SpaceX (USA)**
*   **Capacity**: **100 Metric Tons** (Starship Cargo/HLS)
*   **Interface Standard**: **5.8 GHz Wi-Fi (802.11ac), Starlink Optical**
*   **Strategy**: "The Game Changer" – Industrial-scale mass-to-surface capability
*   **Reference**: [`landers/STARSHIP_HLS.MD`](../landers/STARSHIP_HLS.MD), [`landers/STARSHIP_CARGO.MD`](../landers/STARSHIP_CARGO.MD)

### **Ceres Robotics (USA)**
*   **Capacity**: 500kg (Ceres-1 / B5)
*   **Power**: Solar + **MoonPower Lunar Grid integration**
*   **Strategy**: "Power-as-a-Service" – Long-duration surface operations through lunar night
*   **Reference**: [`landers/CERES_B5.MD`](../landers/CERES_B5.MD)

## 4. Ecosystem Trends

### 4.1 Nano-Rover Proliferation
Successful missions by **Sora-Q** (JAXA SLIM, 2024) and operational data from **IRIS/COLMENA** (Peregrine M1) demonstrate that **0.25-2kg class nano-rovers** are viable "ride-along" payloads with minimal integration burden[^4].

### 4.2 Communication Standards Shift
The ecosystem is experiencing a **protocol transition** from legacy aerospace standards (RS-422, SpaceWire) to commercial IT infrastructure:
- **4G/LTE**: Intuitive Machines (Nokia partnership)
- **802.11ac Wi-Fi**: SpaceX, Astrobotic, Firefly
- **Encryption**: AES-256 becoming baseline (Intuitive Machines lead)

### 4.3 Mass Abundance Era
The arrival of **Starship** (100t) and **Blue Moon** (3t) fundamentally changes lunar mission design, enabling:
- Heavy radiation shielding
- High-power industrial tools
- Redundant systems
- Departure from "extreme mass optimization" paradigm

### 4.4 Power Infrastructure Emergence
**Ceres Robotics** introduces the "MoonPower Lunar Grid" concept, enabling **sustained lunar night operations** through distributed solar arrays and power-sharing infrastructure[^5].

### 4.5 Specialized Robotics
Emergence of **task-specific platforms**:
- **GITAI R1**: Construction and maintenance
- **ASAGUMO**: Cave/lava tube exploration
- **EAGLECAM**: Deployment observation and documentation

## 5. Entity Analysis

The ecosystem comprises **15+ active entities** across commercial, institutional, and academic sectors:

**Commercial Leaders**: Intuitive Machines, Astrobotic, Lunar Outpost, ispace, Venturi Astrolab  
**Emerging Players**: Spacebit, GITAI, Ceres Robotics, FUTURA  
**Institutional Partners**: JAXA, ISRO, CNSA  
**Academic Contributors**: CMU, UNAM

**Reference**: [`SPACE_ENTITIES.MD`](../SPACE_ENTITIES.MD)

## 6. Interoperability Challenges

The ecosystem faces **critical standardization gaps**:

1. **Mechanical Interfaces**: No common deployment mechanism (Griffin vs Nova-C vs HAKUTO-R)
2. **Power Distribution**: Voltage ranges from 12V (nano-rovers) to 120V+ (heavy platforms)
3. **Data Protocols**: RS-422 vs Ethernet vs LTE fragmentation
4. **Security**: Inconsistent encryption standards across providers

**LORS Implication**: A successful standard must provide **translation layers** rather than forcing single-protocol adoption.

## 7. Conclusion

The lunar mobility ecosystem has matured from experimental demonstrations to a **multi-provider commercial marketplace** with clear specialization trends. The "Standardization War" between legacy aerospace protocols and modern commercial IT standards represents the primary technical challenge for LORS adoption.

**Key Recommendation**: LORS should prioritize **interface abstraction** and **protocol translation** to enable cross-provider interoperability without forcing disruptive technology changes on established providers.

---

## References

[^1]: Spacebit ASAGUMO rover specifications, [`rovers/ASAGUMO.MD`](../rovers/ASAGUMO.MD)
[^2]: GITAI R1 robotic rover technical overview, [`rovers/GITAI_R1.MD`](../rovers/GITAI_R1.MD)
[^3]: Educational rover platforms analysis, [`rovers/EDUCATIONAL_PLATFORMS.MD`](../rovers/EDUCATIONAL_PLATFORMS.MD)
[^4]: JAXA SLIM mission results (2024), Sora-Q nano-rover performance data, [`rovers/SORA_Q.MD`](../rovers/SORA_Q.MD)
[^5]: Ceres Robotics MoonPower Lunar Grid concept, [`landers/CERES_B5.MD`](../landers/CERES_B5.MD)

*This report was generated using the `report-ecosystem-mapping` skill, synthesizing data from **20 rover profiles**, **20 lander profiles**, and **15 entity profiles** in the LORS documentation repository.*
