---
id: apex_1
name: APEX 1.0
provider: ispace-U.S. / Draper
class: Medium Logistic
status: Planned
physical:
  payload_capacity_kg: 300
  height_m: 4.0
  width_m: 4.5
  wet_mass_kg: 5390
  dry_mass_kg: 1730
power:
  generation: "Solar Arrays & Li-ion Battery"
  night_survival: "Zeno Power Radioisotope Systems (partnership for future missions)"
  allocation: "Standard CLPS high-power envelopes for lunar ops"
comms:
  earth_to_moon:
    band: "X-Band (via Relay)"
    network: "Deep Space Network (DSN)"
    relay: ["Alpine", "Lupine"]
  wired:
    interfaces: ["RS-422", "Ethernet (SpaceWire optional)"]
  wireless:
    type: "Lander-to-Rover Relay (X-Band)"
---

# APEX 1.0

APEX 1.0 is the next-generation lander developed by **ispace-U.S.** (Headquartered in Denver) in collaboration with **Draper** for the NASA Commercial Lunar Payload Services (CLPS) program. It is specifically designed for high-capability delivery to the lunar far side and polar regions.

## Technical Specifications

### 1. Enhanced Architecture
Compared to the HAKUTO-R Series 1, APEX 1.0 features:
*   **Structural Integrity:** Increased durability for larger payloads and complex landing environments.
*   **Vibration Isolation:** Advanced dampened mounting systems for sensitive scientific instruments.
*   **Satellite Bays:** Two dedicated deployment bays for relay satellites, essential for non-line-of-sight communications.

### 2. Night Survival (Future)
ispace-U.S. has announced a partnership with **Zeno Power** to integrate radioisotope power systems (RPS) into the APEX 1.0 platform. This will enable the lander and its payloads to survive and operate during the 14-day lunar night, a critical requirement for long-term seismic and environmental monitoring.

### 3. Communication Relay
To support the **NASA CP-12** mission at Schrödinger Basin (Far Side), APEX 1.0 deploys two satellites:
*   **Alpine & Lupine:** These transit into high polar orbits, providing continuous data relay for the lander and future surface assets.

## Payloads (Mission 3 / CP-12)
APEX 1.0 is the primary vehicle for the CP-12 task order, carrying:
*   **Farside Seismic Suite (FSS):** World-class seismometers for lunar interior study.
*   **LITMS:** Thermal and electrical conductivity measurements.
*   **LuSEE-Lite:** Electromagnetic field characterization.
*   **ispace-EUROPE Micro Rover:** Commercial tech-demo rover.

## Mission Phases

| Phase | Duration | Details |
| :--- | :--- | :--- |
| **Cruise / Transfer** | ~135+ Days | Low-energy trajectory to maximize mass-to-surface. |
| **Relay Deployment** | Pre-Landing | Deployment of Alpine/Lupine to establish the communication bridge. |
| **Surface Ops** | ~12 Days+ | Baseline mission is 1 lunar day; RPS upgrades enable multi-month ops. |

## Resources
*   [ispace-U.S. APEX 1.0 Overview](https://ispace-us.com/apex-1-0)
*   [Zeno Power Partnership](https://ispace-us.com/ispace-u-s-and-zeno-power-to-collaborate-on-lunar-night-survival/)
*   [Draper CP-12 Mission](https://www.draper.com/commercial-lunar-payload-services-clps)
