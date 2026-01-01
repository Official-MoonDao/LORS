---
id: lupex_rover
name: LUPEX Rover
developer: JAXA / ISRO
type: Utility
class: Science
status: Planned
physical:
  mass_kg: 350
  dimensions:
    length_m: 2.0
    width_m: 1.8
    height_m: 3.3
mobility:
  type: "4-legged crawler / 4-wheel independent steering"
  autonomy: "Full autonomous navigation"
  drill_depth_m: 1.5
power:
  source: "Unfolding solar panels + Li-ion battery (Lunar night survivable)"
comms:
  wireless:
    type: "Lander Relay / Direct-to-Earth"
    band: ["X-Band", "S-Band", "Wi-Fi"]
    antennas: ["High-Gain (HGA)", "Low-Gain (LGA)"]
---

# LUPEX Rover

## Overview
The LUPEX Rover is part of the Lunar Polar Exploration Major (LUPEX) mission, a joint collaboration between JAXA (Japan) and ISRO (India).

## Communication Systems
LUPEX features a high-redundancy communication suite:
*   **Multi-Band Support:** Utilizes **X-Band** and **S-Band** for both relay (via lander) and potential Direct-to-Earth (DTE) links.
*   **Surface Networking:** Includes **Wi-Fi** capabilities for short-range coordination.
*   **Precision Antennas:** Equipped with a steerable **High-Gain Antenna (HGA)** to handle science and drill data downlink.

## Mobility & Polar Integration
*   **Extreme Terrain:** The 4-legged/4-wheel hybrid mobility system is designed to navigate the rugged, sloped terrain of the lunar south pole.
*   **Subsurface Sampling:** Features a specialized 1.5m drill with an auger-tip clamshell for high-purity water ice acquisition.
*   **Thermal Survival:** Designed for **3.5 months** of nominal operations, utilizing high-density electronics and advanced insulation to survive short-duration shadows.

## LORS Relevance
*   Example of international interoperability (Japanese rover on Indian lander).
*   Sets standards for polar ice drilling mechanisms.
