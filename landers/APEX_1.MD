---
id: apex_1
name: APEX 1.0 / Series 3
provider: ispace (ispace-U.S. / ispace Japan)
class: Medium Logistic
status: In-Development / Planned
physical:
  payload_capacity_kg: 300 - 500
  height_m: 3.1 - 4.0
  width_m: 3.3 - 4.5
  wet_mass_kg: 5390 (APEX baseline)
  dry_mass_kg: 1000 - 1730
power:
  generation: "Solar Arrays & Li-ion Battery"
  night_survival: 
    us_variant: "Zeno Power Radioisotope Systems (RPS)"
    jp_variant: "Advanced Thermal Insulation & Active Heaters (non-RPS)"
comms:
  earth_to_moon:
    band: ["X-Band", "S-Band", "Ka-Band"]
    network: "Deep Space Network (DSN) / ESA ESTRACK"
    relay: ["Alpine", "Lupine"]
---

# APEX 1.0 / Series 3

The **APEX 1.0** (U.S. designation) and **Series 3** (Japan designation) represent ispace’s common medium-class lunar logistic platform. This architecture is designed for high-capability delivery to complex lunar environments, including the far side and polar regions.

## Variants & Missions

*   **APEX 1.0 (ispace-U.S.):** Lead vehicle for **Mission 3** (NASA CLPS CP-12). Optimized for far-side operations at Schrödinger Basin using orbital relay satellites.
*   **Series 3 (ispace Japan):** Successor architecture for **Mission 4** (Japan-led). Features enhanced payload volume and thermal designs for 14-day night survival without nuclear power.

## Technical Specifications

### 1. Structural & Environmental
*   **Stiffness & Durability:** Engineered for high-mass payloads (up to 500kg). Successfully completed structural verification at **JAXA Tsukuba Space Center** (Oct 2025), passing vibration, acoustic, and thermal vacuum (TVAC) testing.
*   **Vibration Isolation:** Incorporates an advanced dampened mounting system to protect sensitive NASA and commercial scientific instruments.
*   **Satellite Bays:** Two dedicated bays for the deployment of **Alpine** and **Lupine** relay satellites, essential for non-line-of-sight communications.

### 2. Communication Relay
To support far-side missions, the platform deploys a dedicated microsatellite constellation:
*   **Alpine & Lupine:** Based on the **Blue Canyon Venus-100** bus, these satellites provide high-speed X/Ka-band data relay from the lunar surface to Earth.
*   **Orbit:** Naturally circularize into high polar orbits, providing >70% visibility for future South Pole missions.

### 3. Night Survival Strategies
*   **US Missions (RPS):** Utilizing **Zeno Power** radioisotope systems for multi-month operations during the lunar night.
*   **Japanese Missions (Passive/Active):** Utilizing enhanced multi-layer insulation (MLI) and optimized heater cycles verified during JAXA TVAC testing (+130°C to -140°C).

## Integration & Milestones
*   **PDR/CDR:** The platform has successfully completed all Preliminary Design Reviews (PDR). The Critical Design Review (CDR) for Mission 3 was completed in early 2024.
*   **Testing Heritage:** Built upon lessons learned from HAKUTO-R (Series 1) sensor anomalies, featuring more robust navigation and ranging (LRF) hardware.

## Mission Roadmap

| Mission | Provider | Lander | Date | Target Site |
| :--- | :--- | :--- | :--- | :--- |
| **Mission 3 (CP-12)** | ispace-U.S. | APEX 1.0 | 2026 | Schrödinger Basin (Far Side) |
| **Mission 4** | ispace Japan | Series 3 | 2028 | TBD (Polar or Far Side) |

## Resources
*   [ispace-U.S. APEX 1.0 Overview](https://ispace-us.com/apex-1-0)
*   [ispace Series 3 Testing Milestone (JAXA)](https://ispace-inc.com/news/?p=4821)
*   [Zeno Power Partnership](https://ispace-us.com/ispace-u-s-and-zeno-power-to-collaborate-on-lunar-night-survival/)
*   [Draper CLPS CD-12 Mission](https://www.draper.com/commercial-lunar-payload-services-clps)
