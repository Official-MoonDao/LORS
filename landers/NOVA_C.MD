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
    interfaces: ["Ethernet", "Serial", "RS-422"]
  wireless:
    standard: "802.11ac Wi-Fi & 4G/LTE"
    frequency: "5.5 - 5.85 GHz (Wi-Fi)"
    relay_capability: "4G/LTE (Nokia Tipping Point demo)"
---

# Nova-C

## Overview
Intuitive Machines' Nova-C is a hexagonal cylindrical lunar lander designed for high-precision, autonomous delivery of payloads to the lunar surface. It represents a significant milestone in commercial lunar exploration, being the first commercial spacecraft to achieve a successful soft landing on the Moon. The lander leverages a liquid oxygen (LOX) and liquid methane (Methalox) propulsion system, inherited from NASA's Project Morpheus.

## Service Features
*   **24/7 Data Coverage:** Continuous communication via the Intuitive Machines Lunar Data Network (LDN).
*   **Encrypted Data:** All payload data is protected using **AES-256** encryption.
*   **Customizable Mounting:** Payloads can be mounted in various orientations and locations to optimize FoV and thermal environment.

## Technical Systems

### 1. Propulsion & Attitude Control
*   **Main Engine:** Single **VR900** bipropellant engine.
*   **Propellants:** Liquid Oxygen (LOX) / Liquid Methane (LCH4).
*   **Thrust:** **3,100 N (700 lbf)** to **4,000 N (900 lbf)**.
*   **RCS:** Cold-gas Helium reaction control system for precision attitude maneuvers; split into **two redundant branches**, each with two thrust quads (**4 quads total**).
*   **Efficiency:** Methalox provides a higher specific impulse and is cleaner than traditional hypergolics, enabling future ISRU compatibility.

### 2. Power Architecture
*   **Generation:** Three fixed solar panels (one top-deck, two body-mounted). 
*   **Performance:** Can generate up to **788 W** peak.
*   **Storage:** **25 Ah** Lithium-Ion battery system.
*   **Distribution:** **28 VDC (Unregulated)** bus provided to all payload interfaces.

### 3. Communication Systems
Nova-C acts as a high-bandwidth hub for surface assets:
*   **Earth-to-Moon:** S-Band links using the Space Network and Intuitive Machines' ground stations.
*   **Wireless Relay:**
    *   **Wi-Fi:** 802.11ac (5 GHz) for local instrument roaming.
    *   **4G/LTE:** First-of-its-kind lunar LTE network (Nokia collaboration on IM-2) for high-speed connectivity over several kilometers.
*   **Wired:** Standardized Ethernet and Serial interfaces for high-reliability data transfer.

### 4. Descent & Landing Technology
*   **Navigation:** Uses **Navigation Doppler Lidar (NDL)** and vision-based systems for precise velocity and altitude measurement.
*   **Hazard Avoidance:** Autonomous hazard detection and avoidance (HDA) during the final vertical descent phase.
*   **Tolerance:** Capable of landing on slopes up to **10 degrees**.
*   **Relocation:** Unique capability to perform a post-landing "hop" to relocate the lander to a new site if required.

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
*   [Intuitive Machines Nova-C Product Page](https://www.intuitivemachines.com/lightcargo)
*   [Lunar Access Services (IM)](https://www.intuitivemachines.com/lunaraccess)
*   [IM-1 Mission Dashboard](https://www.intuitivemachines.com/im-1)
*   [Orbital Debris Assessment Report (IM-1)](https://apps.fcc.gov/els/GetAtt.html?id=265886&x=)
*   [NASA IM-1 CLPS Press Kit (PDF)](https://www.nasa.gov/wp-content/uploads/2024/01/np-2023-12-016-jsc-clps-im-press-kit-web-508.pdf)
*   [NASA IM-2 CLPS Press Kit (PDF)](https://www.nasa.gov/wp-content/uploads/2025/02/np-2025-02-005-jsc-clps-intuitive-machines-press-kit-508-2-25-25.pdf)
*   [eoPortal Nova-C Profile](https://directory.eoportal.org/satellite-missions/intuitive-machines)