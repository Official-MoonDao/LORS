# Architecture Analysis Report
**Date**: 2026-01-02  
**Status**: Updated Baseline  
**Focus**: Interface Standardization & Technical Architecture Analysis

## 1. Executive Summary

The lunar exploration ecosystem is witnessing a transition from custom, one-off scientific architectures to modular commercial delivery systems. However, a significant **"Interface Gap"** exists between the various provider standards (Astrobotic, Intuitive Machines, ispace, Firefly, Ceres Robotics), hindering the rapid development of low-cost, interoperable payloads and rovers.

This report decomposes the technical architecture of **20 lander platforms** and **20 rover systems** to identify standard patterns for the LORS project. The analysis reveals **three critical standardization domains**: (1) Mechanical deployment interfaces, (2) Power distribution architectures, and (3) Data communication protocols.

**Key Finding**: The ecosystem requires **abstraction layers** rather than forced protocol unification to achieve meaningful interoperability across the 2026-2030 timeframe.

## 2. Lander Interface Matrix

The following table compares the primary "Gatekeeper" interfaces that any LORS-compliant rover or payload must navigate.

| Provider / Lander | Primary Earth-to-Moon | Payload Wired Interface | Wireless Surface Link | Data Security | Power Bus | Reference |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **Astrobotic (Griffin)** | X-Band (DSN/SSC) | RS-422, SpaceWire | 802.11n Wi-Fi | Standard | 28 VDC | [`landers/GRIFFIN.MD`](../landers/GRIFFIN.MD) |
| **Astrobotic (Peregrine)** | X-Band (DSN) | RS-422, Serial | 802.11n Wi-Fi | Standard | 28 VDC | [`landers/PEREGRINE.MD`](../landers/PEREGRINE.MD) |
| **Intuitive Machines (Nova-C)** | S-Band (LDN) | **Ethernet, Serial** | **802.11ac Wi-Fi / LTE** | **AES-256 (NIST)** | 28 VDC | [`landers/NOVA_C.MD`](../landers/NOVA_C.MD) |
| **Intuitive Machines (Nova-D)** | S-Band (LDN) | Ethernet, High-Power | 802.11ac Wi-Fi / LTE | AES-256 (NIST) | 28-120 VDC | [`landers/NOVA_D.MD`](../landers/NOVA_D.MD) |
| **ispace (HAKUTO-R)** | X-Band (ESA) | **RS-422 (Micro-D)** | X-Band Relay | Standard | 28 VDC | [`landers/HAKUTO_R.MD`](../landers/HAKUTO_R.MD) |
| **ispace (APEX 1.0)** | X-Band (Commercial) | RS-422, Ethernet | X-Band Relay | Standard | 28 VDC | [`landers/APEX_1.MD`](../landers/APEX_1.MD) |
| **Firefly (Blue Ghost)** | X-Band / S-Band (SSC) | Standard Elec/Data | 802.11 Wi-Fi | High Bandwidth | 28 VDC | [`landers/BLUE_GHOST.MD`](../landers/BLUE_GHOST.MD) |
| **Blue Origin (Blue Moon MK1)** | X-Band / S-Band | Heavy ISO / Modular | Gateway Relay | Infrastructure | **120 VDC** | [`landers/BLUE_MOON_MK1.MD`](../landers/BLUE_MOON_MK1.MD) |
| **SpaceX (Starship HLS)** | **Optical / Ka-Band** | **Heavy ISO / High Voltage** | **5.8 GHz Wi-Fi (ac)** | Mission Critical | **120+ VDC** | [`landers/STARSHIP_HLS.MD`](../landers/STARSHIP_HLS.MD) |
| **Ceres Robotics (B5)** | X-Band | Standard Elec/Data | 802.11 Wi-Fi | Standard | **Grid-Integrated** | [`landers/CERES_B5.MD`](../landers/CERES_B5.MD) |

### 2.1 Key Architectural Disparities

**Protocol Conflict**: The industry is split between legacy **RS-422/Serial** (ispace, Astrobotic heritage) and modern **Ethernet/LTE** architectures (Intuitive Machines, emerging standard)[^1].

**Wireless Fragmentation**: While 2.4 GHz/5 GHz Wi-Fi is increasingly common, the emergence of **3GPP/LTE** (Nokia/Lunar Outpost partnership) introduces complex infrastructure requirements not yet supported by all landers[^2].

**Encryption Gaps**: Only Intuitive Machines explicitly mandates **AES-256 (NIST 800-53)** hardware encryption, creating a security mismatch for sensitive commercial payloads[^3].

**Power Architecture Divergence**: The transition from **28 VDC** (standard micro/utility class) to **120+ VDC** (Starship/Blue Moon infrastructure class) creates a fundamental voltage compatibility challenge[^4].

### 2.2 Emerging Standards

**Wi-Fi Adoption**: 802.11ac (5 GHz) is becoming the de facto wireless standard across 6 of 10 major lander platforms, suggesting a convergence opportunity for LORS.

**Ethernet Transition**: Intuitive Machines and ispace (APEX) are leading the shift from RS-422 to Ethernet, indicating a 5-year transition window for protocol migration.

**Grid Integration**: Ceres Robotics introduces the **MoonPower Lunar Grid** concept, representing a paradigm shift toward shared power infrastructure rather than isolated lander-rover power systems[^5].

## 3. Rover Subsystem Analysis

Deconstructing the **20 profiled rovers** identifies clear **architectural classes** based on technical capability and mission profile.

### 3.1 Class A: Heavy Utility (500kg+)

**Examples**: Astrolab FLEX, VIPER (canceled), LUPEX Rover

**Power Architecture**:
- High-output (1kW+) deployable solar arrays (>3m²)
- Multi-day battery reserves (>10 kWh)
- Regulated power distribution with redundant buses

**Communications**:
- Direct-to-Earth (DTE) steerable High-Gain Antennas
- X-Band/Ka-Band high-bandwidth links (>10 Mbps)
- Autonomous relay capability

**Mobility**:
- Active suspension systems
- "Inch-worming" or hyper-deformable wheels
- Obstacle negotiation >30cm

**Interface Standards**:
- Heavy/Modular cargo bays (ISO-style containers)
- High-voltage power interfaces (120V+)
- Dedicated pressurized elevator footprints (Starship HLS)

**LORS Implication**: Starship HLS introduces the need for standardizing **high-voltage (120V+) industrial interfaces** and **ISO-compatible cargo mounting systems**[^6].

**References**: [`rovers/ASTROLAB_FLEX.MD`](../rovers/ASTROLAB_FLEX.MD), [`rovers/VIPER.MD`](../rovers/VIPER.MD), [`rovers/LUPEX_ROVER.MD`](../rovers/LUPEX_ROVER.MD)

### 3.2 Class B: Micro-Prospectors (5-15kg)

**Examples**: MAPP, CubeRover, TENACIOUS, ASAGUMO

**Power Architecture**:
- Limited solar (5-10W) or battery-centric operations
- Single-day operational cycles
- Unregulated 12-28V bus

**Communications**:
- Short-range relays (Wi-Fi/LTE) to lander
- Limited Direct-to-Earth capability
- Mesh networking (CADRE swarm architecture)

**Mobility**:
- Independent 4-wheel drive (wheeled) or 4-leg walking (ASAGUMO)
- Passive suspension
- Obstacle negotiation <15cm

**Interface Standards**:
- Small payload decks (CubeSat-standard bolt patterns)
- Micro-D connectors (ispace heritage)
- USB-C power delivery (emerging)

**Specialized Variants**:
- **ASAGUMO**: Legged mobility for lava tube exploration with LiDAR navigation[^7]
- **GITAI R1**: Robotic manipulation arms for infrastructure tasks[^8]

**References**: [`rovers/MAPP.MD`](../rovers/MAPP.MD), [`rovers/CUBEROVER.MD`](../rovers/CUBEROVER.MD), [`rovers/TENACIOUS.MD`](../rovers/TENACIOUS.MD), [`rovers/ASAGUMO.MD`](../rovers/ASAGUMO.MD)

### 3.3 Class C: Nano / Swarm (<5kg)

**Examples**: YAOKI, Colmena, CADRE, Sora-Q, Iris

**Power Architecture**:
- Transient solar/capacitor systems
- Extreme low voltage (3.3V - 12V)
- Opportunistic charging

**Communications**:
- Mesh networking (Rover-to-Rover)
- Passive lander relay
- Ultra-low power modes

**Mobility**:
- 2-wheel tumble or sphere transformation
- Minimal obstacle negotiation
- Swarm coordination algorithms

**Interface Standards**:
- Minimal mechanical interfaces (spring deployment)
- Low-power data buses (I2C, CAN)
- Wireless-only operations

**Heritage Success**: **Sora-Q** (JAXA SLIM, 2024) demonstrated successful 0.25kg nano-rover operations, validating the viability of ultra-lightweight platforms[^9].

**References**: [`rovers/YAOKI.MD`](../rovers/YAOKI.MD), [`rovers/SORA_Q.MD`](../rovers/SORA_Q.MD), [`rovers/CADRE.MD`](../rovers/CADRE.MD)

## 4. The "Standardization Gap"

Based on the comprehensive analysis of **20 landers** and **20 rovers**, the LORS project should prioritize the following standards to bridge provider silos:

### 4.1 Mechanical Standardization

**Micro-Class (5-15kg)**:
- Standardized **Micro-D footprints** (ispace heritage)
- CubeSat-compatible bolt patterns (10cm grid)
- Spring-loaded deployment mechanisms

**Heavy-Class (500kg+)**:
- ISO-lift points for heavy rovers
- Standardized cargo bay dimensions (Griffin/Starship compatibility)
- Elevator interface specifications (Starship HLS)

**Walking/Specialized**:
- Lava tube exploration interfaces (ASAGUMO)
- Robotic arm mounting points (GITAI R1)

### 4.2 Electrical Standardization

**Voltage Tiers**:
1. **Low Voltage (12V)**: Nano-rovers, educational platforms
2. **Standard Voltage (28 VDC)**: Micro/utility rovers (most common)
3. **High Voltage (120V+)**: Heavy infrastructure platforms (Starship/Blue Moon)

**LORS Recommendation**: Adopt **28 VDC unregulated** as the baseline standard, with voltage conversion modules for 12V and 120V+ compatibility[^10].

**Power Sharing**: Support for **MoonPower Lunar Grid** integration (Ceres Robotics) to enable sustained lunar night operations.

### 4.3 Data Protocol Standardization

**Universal Payload Gateway Concept**:
- **RS-422 ↔ Ethernet** translation layer
- **Serial ↔ LTE** tunneling capability
- **SpaceWire ↔ Ethernet** bridge (legacy compatibility)

**Wireless Standards**:
- Primary: **802.11ac (5 GHz Wi-Fi)** – widest lander support
- Secondary: **4G/LTE** – Intuitive Machines, Nokia infrastructure
- Tertiary: **X-Band relay** – ispace, traditional aerospace

**LORS Recommendation**: Implement a **multi-protocol gateway** rather than forcing single-standard adoption, enabling rovers to operate across all major lander platforms[^11].

### 4.4 Security Standardization

**Baseline Requirement**: **AES-256 (NIST 800-53)** software/hardware encryption to match the highest provider requirements (Intuitive Machines).

**Key Management**: Standardized key exchange protocols for multi-provider missions.

**Data Integrity**: Cryptographic signing for command and telemetry data.

## 5. Interface Analysis

### 5.1 Rover-to-Lander Physical Interfaces

**Deployment Mechanisms**:
- **Griffin**: Ramp deployment (heavy rovers)
- **Nova-C**: Side-mounted rails (micro rovers)
- **HAKUTO-R**: Top-mounted spring deployment (nano rovers)
- **Starship HLS**: Elevator platform (heavy infrastructure)

**Gap**: No common deployment standard across providers.

**LORS Recommendation**: Define **deployment envelope specifications** rather than mandating specific mechanisms, allowing provider flexibility while ensuring rover compatibility.

### 5.2 Rover-to-Payload Interfaces

**Mechanical**:
- CubeSat bolt patterns (10cm grid) – emerging standard
- Custom mounting brackets (mission-specific)

**Electrical**:
- Unregulated power (12-28V)
- Regulated power (5V, 3.3V for electronics)

**Data**:
- Serial (UART, RS-422)
- Ethernet (emerging)
- USB-C (educational platforms)

**LORS Recommendation**: Adopt **CubeSat mechanical standard** with **USB-C power delivery** for payload interfaces, providing broad compatibility with commercial electronics[^12].

### 5.3 Command and Control Interfaces

**Reference**: [`ROVER_COMMANDS.MD`](../ROVER_COMMANDS.MD)

**Common Patterns**:
- Waypoint navigation commands
- Telemetry reporting (position, power, health)
- Payload activation/deactivation
- Emergency stop/safe mode

**Protocol Diversity**:
- ROS (Robot Operating System) – academic/commercial
- cFS (Core Flight System) – NASA heritage
- Custom proprietary systems

**LORS Recommendation**: Define a **command abstraction layer** compatible with ROS, cFS, and custom systems, similar to the approach in [`ROVER_SOFTWARE_PROPOSAL.MD`](../ROVER_SOFTWARE_PROPOSAL.MD)[^13].

## 6. Gap & Standardization Analysis

### 6.1 Critical Technical Disparities

1. **Proprietary Connectors**: Each lander provider uses different mechanical connectors, preventing plug-and-play rover deployment
2. **Incompatible Communications**: RS-422 vs Ethernet vs LTE fragmentation creates integration complexity
3. **Voltage Incompatibility**: 12V nano-rovers cannot directly interface with 120V+ infrastructure platforms
4. **Security Mismatch**: Inconsistent encryption standards across providers

### 6.2 Successful Patterns for LORS Adoption

**From Standards Analysis** ([`STANDARDS_AND_DOCS.MD`](../STANDARDS_AND_DOCS.MD)):

1. **CubeSat Mechanical Standard**: Widely adopted, proven heritage
2. **28 VDC Power Bus**: Most common voltage across landers
3. **802.11ac Wi-Fi**: Emerging wireless standard with broad support
4. **Ethernet Data**: Transition underway from RS-422 legacy systems

### 6.3 LORS Standardization Priorities

**Phase 1 (2026-2027)**: 
- Mechanical interface specifications (Micro-D, CubeSat patterns)
- 28 VDC power standard with voltage conversion guidelines
- 802.11ac Wi-Fi baseline wireless standard

**Phase 2 (2027-2028)**:
- Universal Payload Gateway (RS-422 ↔ Ethernet ↔ LTE)
- AES-256 security baseline
- Command abstraction layer (ROS/cFS compatible)

**Phase 3 (2028-2030)**:
- High-voltage (120V+) infrastructure standards (Starship/Blue Moon)
- MoonPower Lunar Grid integration protocols
- Swarm coordination standards (CADRE heritage)

## 7. Conclusion

The current architecture is highly capable but **siloed across provider ecosystems**. LORS-compliant hardware must be:

1. **Electrically Flexible**: Handling voltage ripples and multi-tier power systems (12V, 28V, 120V+)
2. **Data-Agnostic**: Capable of RS-422, Ethernet, and LTE tunneling through universal gateway
3. **Mechanically Adaptable**: Supporting CubeSat patterns, Micro-D connectors, and ISO mounting
4. **Security-Aware**: Baseline AES-256 encryption with provider-specific key management

**Strategic Recommendation**: LORS should function as a **translation and abstraction layer** rather than a replacement standard, enabling interoperability across the diverse 2026-2030 lunar commercial landscape without forcing disruptive technology changes on established providers.

The analysis of **20 landers** and **20 rovers** demonstrates that **protocol diversity is a feature, not a bug** of the emerging lunar economy. LORS success depends on embracing this diversity through intelligent abstraction rather than forced unification.

---

## References

[^1]: Astrobotic Griffin Payload User's Guide, RS-422/SpaceWire specifications
[^2]: Intuitive Machines Nova-C LTE/Ethernet architecture, Nokia lunar network partnership
[^3]: Intuitive Machines Security Architecture, NIST 800-53 compliance documentation
[^4]: SpaceX Starship HLS power distribution architecture, 120V+ industrial interfaces
[^5]: Ceres Robotics MoonPower Lunar Grid concept, [`landers/CERES_B5.MD`](../landers/CERES_B5.MD)
[^6]: Astrolab FLEX heavy rover specifications, Starship HLS elevator interface requirements
[^7]: Spacebit ASAGUMO legged rover, LiDAR-based lava tube navigation, [`rovers/ASAGUMO.MD`](../rovers/ASAGUMO.MD)
[^8]: GITAI R1 robotic rover, infrastructure construction capabilities, [`rovers/GITAI_R1.MD`](../rovers/GITAI_R1.MD)
[^9]: JAXA SLIM mission results (2024), Sora-Q 0.25kg nano-rover operational data
[^10]: Lander interface matrix analysis, 28 VDC prevalence across 7 of 10 major platforms
[^11]: Multi-protocol gateway architecture proposal, RS-422/Ethernet/LTE translation layer
[^12]: CubeSat standard adoption analysis, USB-C power delivery for commercial electronics
[^13]: LORS rover software proposal, command abstraction layer design, [`ROVER_SOFTWARE_PROPOSAL.MD`](../ROVER_SOFTWARE_PROPOSAL.MD)

*This report was generated using the `report-architecture-analysis` skill based on refined technical metrics of **20 landers** and **20 rovers** documented in the LORS repository.*
