---
id: change_7
name: Chang'e 7
provider: CNSA
class: Heavy / Complex
status: Planned
physical:
  payload_capacity_kg: 10
  components: [Orbiter, Lander, Rover, Hopper]
  lifespan: "8 Years (Planned)"
power:
  surface_power_w: "≤50W (Payload allocation)"
  thermal: "-180°C to +80°C (Surface operational range)"
comms:
  earth_to_moon:
    band: "X-Band"
    network: "Queqiao-2 Relay Satellite"
  wired:
    interfaces: ["CNSA Standard payload interfaces"]
  wireless:
    type: "Lander-to-Hopper / Lander-to-Rover Relay"
---

# Chang'e 7

## Overview
Chang'e 7 is a complex multi-vehicle mission to the Lunar South Pole by China.

## Communication Systems
Chang'e 7 utilizes a layered communication relay architecture:
*   **Relay Node:** All surface vehicles (Lander, Rover, Hopper) communicate with Earth via the **Queqiao-2** relay satellite (launched Mar 2024).
*   **Surface Networking:** The lander acts as the central hub for coordinating the "flying detector" (Hopper) and the rover.

## Mission Phases & Timeline
| Phase | Duration | Details |
| :--- | :--- | :--- |
| **Orbit Survey** | ~2 Months | High-precision landing area mapping by the orbiter. |
| **Surface Ops** | Up to 8 Years | Continuous science operations during lunar daylight. |

## Service Modes by Phase
*   **Survey:** Focus on high-resolution imagery and site selection.
*   **Surface:** Multi-static science where the lander coordinates seismic and electromagnetic experiments across the deployment site.

## Key Features
*   **Multi-Vehicle Architecture:** Not a single lander, but an integrated suite including a **Rover** and a **Mini-flying probe (Hopper)**.
*   **Shadow Exploration:** The Hopper uses rocket propulsion to "leap" into permanently shadowed craters to search for water molecules.
*   **Longevity:** Designed for an 8-year mission life, significantly longer than commercial "1-day" landers.
