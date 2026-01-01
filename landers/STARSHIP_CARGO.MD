---
id: starship_cargo
name: Starship Cargo
developer: SpaceX
type: Heavy Cargo
class: Logistics / Infrastructure
status: In-Development
physical:
  height_m: 50.0
  diameter_m: 9.0
  payload_capacity_kg: 100000
power:
  source: "Solar Arrays"
comms:
  earth_to_moon:
    band: ["S-Band", "Ka-Band", "Optical (Starlink Laser)"]
    network: "SpaceX Starlink / DSN"
  surface_links:
    standard: "802.11ac / LTE"
    application: "Autonomous Fleet Coordination"
---

# Starship Cargo

## Overview
Starship Cargo is the dedicated logistics version of SpaceX's heavy-lift vehicle. It is designed to deliver unprecedented mass to the lunar surface, enabling the construction of permanent bases and large-scale industrial operations.

## Technical Architecture
*   **Payload Capacity:** Capable of delivering **100 metric tons** (100,000 kg) to the lunar surface in a single mission.
*   **Loading:** Features a large side-opening cargo bay or an internal crane system, depending on the payload configuration.
*   **Propulsion:** Utilizes the same LOX/LCH4 Raptor engine architecture as the HLS variant, but is optimized for one-way or high-cadence supply runs.

## Communication Systems
*   **Next-Gen Data:** Beyond standard S-Band and Ka-Band, Starship Cargo is planned to utilize **Optical Laser Links** (Starlink heritage) for gigabit-class backhaul to Earth via a lunar Starlink constellation.
*   **Local Relay:** Serves as a high-power Wi-Fi and LTE hub for swarms of autonomous rovers and construction robots.

## LORS Relevance
*   **Interface Standard:** Starship Cargo defines the "Bulk Cargo" interface for LORS, including high-voltage power hookups (up to 100kW) for habitats and industrial ISRU plants.
*   **Interoperability:** Its massive scale allows it to carry standard ISO shipping containers adapted for lunar use, facilitating a global logistics standard.

## Missions
*   **Starship Cargo 1:** Uncrewed logistics demonstration (Planned NET 2026).
*   **Artemis Logistics:** Future supply runs for the Gateway and South Pole base.

## Resources
*   [SpaceX Starship Users Guide (PDF)](https://www.spacex.com/media/starship_users_guide_v1.pdf)
