---
id: nova-c
name: Nova-C
provider: Intuitive Machines
class: Light Logistic
status: Active (Proven)
physical:
  payload_capacity_kg: 130 # Max capacity to surface
  height_m: 3.938
  width_m: 2.385
  depth_m: 2.19
  dry_mass_kg: 624
  wet_mass_kg: 1908
  propellant_mass_kg: 1267
  fluids:
    - lch4: 845 kg (Liquid Methane)
    - lox: 422 kg (Liquid Oxygen)
    - helium: 17 kg (Gaseous Pressurant/RCS)
power:
  surface_power_w: "200 W (Guaranteed) / up to 788 W (Max generation)"
  source: "Solar (3 Fixed Panels: Top Deck [325 cells] | 2x Body [168 cells each])"
  battery: "1554 Wh (3 boxes | 72 Li-Ion cells each | 216 total)"
  bus_voltage: "28 VDC (Unregulated | Range: 27-33.6 V)"
comms:
  earth_to_moon:
    transponders: "2x Low-rate S-Band (TT&C) | 2x High-rate Downlink"
    band: "S-Band (Uplink: 2025-2110 MHz | Downlink: 2200-2290 MHz)"
    data_rate: "250 kbps - 6 Mbps"
    encryption: "AES-256 (NIST 800-53)"
    protocols: ["CCSDS AOS", "COTP"]
  wired:
    interfaces: ["Ethernet", "Serial", "RS-422", "UART"]
    connectors: ["Glenair Series 80 (Mighty Mouse)", "Micro-D (MIL-DTL-83513)"]
  wireless:
    standard: "802.11ac Wi-Fi & 4G/LTE"
    frequency: "5.5 - 5.85 GHz (Wi-Fi)"
    relay_capability: "4G/LTE (Nokia Tipping Point demo)"
---

# Nova-C

## Overview
Intuitive Machines' Nova-C is a hexagonal cylindrical lunar lander designed for high-precision, autonomous delivery of payloads to the lunar surface. It represents a significant milestone in commercial lunar exploration, being the first commercial spacecraft to achieve a successful soft landing on the Moon. It uses a liquid oxygen (LOX) and liquid methane (Methalox) propulsion system.

## Service Features
*   **24/7 Data Coverage:** Continuous communication via the Intuitive Machines Lunar Data Network (LDN).
*   **Encrypted Data:** All payload data is protected using **AES-256** encryption.
*   **Customizable Mounting:** No standard hole grid; supports custom drill patterns on Al-Isogrid or Composite Decks.

## Technical Systems

### 1. Mechanical & Structural Details
*   **Mounting Interface:** Payloads are integrated via custom drill patterns. Structural decks are either Aluminum Isogrid or Composite.
*   **Mass Accounting:** 
    *   **Lander Mass:** Includes static mounting brackets.
    *   **Payload Mass:** Includes separation mechanisms and payload-specific cabling.
*   **Stiffness Requirements:** Payload first natural frequency must be **> 100 Hz** in the stowed configuration to avoid resonance during launch.
*   **Field of View (FOV):** 
    *   **Horizontal:** 360° view is obstructed by the 6 landing legs. 
    *   **Zenith/Horizon:** Optimal placement on the **Top Deck** is required for unobstructed views.

### 2. Environmental & Thermal Envelopes
*   **Thermal Survival (Transit):** **-20°C to +50°C**. Supported by passive insulation and lander-provided heaters.
*   **Operational Temperature (Surface):** **+10°C to +40°C**. Payloads with sensitive optics or electronics may require active thermal management.
*   **Lunar Night:** **Non-Survival**. No power or heat is provided after the 14-Earth day mission duration.
*   **Dust Mitigation:** Mandatory use of lens covers or protective shields for all optical instruments located **< 2m** from the lander base due to engine plume regolith kickback.
*   **EMI/EMC:** High interference environment. Payloads must include input filtering compliant with **MIL-STD-461G**.

### 3. Electrical & Data Interfaces
*   **Primary Power:** **28 VDC Nominal** (Operational range: **22V – 34V**).
*   **Connectors:** Standardized on **Glenair Series 80 (Mighty Mouse)** or **Micro-D (MIL-DTL-83513)**.
*   **Data Protocols:**
    *   **Low-Rate:** RS-422 / UART for Command & Data Handling (C&DH).
    *   **High-Rate:** Gigabit Ethernet (UDP/IP). Supports SpaceWire-to-Ethernet bridging for specific missions.
*   **Latency:** Typical Earth-to-Moon data latency of **2–10 seconds** depending on ground station routing.

### 4. Propulsion & Attitude Control
*   **Main Engine:** Single **VR900** bipropellant engine.
*   **Propellants:** Liquid Oxygen (LOX) / Liquid Methane (LCH4).
*   **Thrust:** **3,100 N (700 lbf)** to **4,000 N (900 lbf)**.
*   **RCS:** Cold-gas Helium reaction control system for precision attitude maneuvers; split into **two redundant branches**, each with two thrust quads (**4 quads total**).

### 5. Descent & Landing Technology
*   **Navigation:** Uses **Navigation Doppler Lidar (NDL)** and vision-based systems for precise velocity and altitude measurement.
*   **Hazard Avoidance:** Autonomous hazard detection and avoidance (HDA) during the final vertical descent phase.
*   **Tolerance:** Capable of landing on slopes up to **10 degrees**.

## Mission Phases & Duration
The lander has a nominal design life of **14 Earth days** (one lunar daytime).

| Phase | Duration | Details |
| :--- | :--- | :--- |
| **Launch/Separation** | Hours | Transition to stable power and comms. |
| **Cruise / Transfer** | ~7 - 9 Days | Direct trajectory to TLI. Health checks for active payloads. |
| **Lunar Orbit** | ~24 Hours | Circularization and pre-descent checkout. |
| **Landing** | < 1 Hour | Autonomous descent with NDL/HDA. |
| **Surface Ops** | ~7 - 14 Days | Full payload support until local lunar sunset. |

## Missions
*   **IM-1 (Odysseus):** Launched Feb 15, 2024. **Success**. First commercial soft landing. Landed at Malapert A (80.13°S, 1.44°E). Rested on its side but functioned for ~7 days.
*   **IM-2 (Athena):** Targeted for the Shackleton Connecting Ridge. Focus on water ice prospecting (PRIME-1) and high-speed LTE relay.
*   **IM-3:** Targeting Reiner Gamma (Magnetic anomaly). Includes CADRE rovers and Lunar Vertex.
*   **IM-4:** Targeting Mons Mouton (South Pole). Delivering heavy cargo and long-duration science.

## Resources

### General & Mission Overviews
*   [Intuitive Machines Nova-C Product Page](https://www.intuitivemachines.com/lightcargo)
*   [eoPortal: Nova-C Mission Profile](https://directory.eoportal.org/satellite-missions/intuitive-machines) (Dimensions, height, and mass tables)
*   [NASA IM-1 CLPS Press Kit](https://www.nasa.gov/wp-content/uploads/2024/01/np-2023-12-016-jsc-clps-im-press-kit-web-508.pdf)
*   [NASA IM-2 (Athena) Press Kit](https://www.nasa.gov/wp-content/uploads/2025/02/np-2025-02-005-jsc-clps-intuitive-machines-press-kit-508-2-25-25.pdf) (28V Bus details and South Pole thermal life-cycle)

### Technical Specifications & Results
*   **Mechanical:** [PRIME-1 Interface Presentation](https://ntrs.nasa.gov/api/citations/20230007582/downloads/SRR%20PRIME-1.pdf) (Mounting patterns, 3PO off-loader, and mass categories)
*   **Data & I/O:** [SCALPSS Payload Workshop](https://ntrs.nasa.gov/api/citations/20250001741/downloads/SCALPSS_CLPS_CS-6_Payload_Workshop_250224.pdf) (Transition from RS-422 to 1 Gbps Ethernet)
*   **EMI / RFI:** [ROLSES-1 Flight Results](https://arxiv.org/pdf/2503.09842) (Analysis of internal RFI and lander avionics noise)
*   **Propulsion/GNC:** [Nova-C HDA Technical Paper](https://arxiv.org/pdf/2204.00660) (Lidar integration, slope tolerance, and VR900 specs)
*   **Propellant/Cryo:** [RFMG Tech Demo Report](https://ntrs.nasa.gov/api/citations/20240014338/downloads/E-20280%20RFMG-IM%20Results.pdf) (Methalox storage and RF sensor integration)
*   **Comm System:** [Lunar Node-1 (LN-1) Results](https://ntrs.nasa.gov/citations/20240011676) (S-Band telemetry rates and beacon operation modes)

### Regulatory & Safety
*   [Orbital Debris Assessment Report (IM-1)](https://apps.fcc.gov/els/GetAtt.html?id=265886&x=)
*   [IM-1 Mission Operations Log](https://www.intuitivemachines.com/im-1)