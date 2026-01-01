---
id: astrolab_flex
name: FLEX (Flexible Logistics and Exploration)
developer: Venturi Astrolab
type: Utility
class: Heavy / Logistics
status: Planned
physical:
  mass_kg: 1600
  payload_capacity_kg: 1500
  locomotion: 4-wheel active
power:
  source: "Deployable 3m² Solar Array + Extreme Temp Battery Enclosure"
  thermal: "Operational from -90°C to -230°C (Bespoke Venturi thermal management)"
comms:
  wireless:
    type: "Direct-to-Earth / Lander Relay"
    antenna: "Steerable High-Gain Antenna (HGA)"
    performance: "High-bandwidth support for remote operation"
mobility:
  speed_max_km_h: 20
  climb_grade_deg: 30
  obstacle_max_cm: 40
  wheels: "930mm Hyper-deformable lunar wheels (Venturi)"
  steering: "4-wheel crab steering (Sun-tracking capability)"
---

# FLEX

## Overview
The Flexible Logistics and Exploration (FLEX) rover is a heavy-duty, multi-purpose vehicle designed by Venturi Astrolab. It is intended to function as a "pickup truck" for the Moon, capable of transporting diverse payloads using a modular interface.

## Communication Systems
FLEX is designed for high-bandwidth remote operations:
*   **High-Gain Antenna:** Features a steerable HGA for direct-to-Earth (DTE) communication or high-rate relay via landers like **Griffin M1**.
*   **Performance:** Facilitates real-time teleoperation from Earth even during complex cargo handling.

## Mobility & Advanced Systems
*   **Hyper-Deformable Wheels:** Utilizes 930mm malleable wheels engineered to absorb terrain irregularities and provide superior traction in soft regolith.
*   **Dynamic Speed:** Capable of surface speeds up to **20 km/h**, significantly faster than micro-rovers.
*   **Sun-Tracking Mobility:** The 4-wheel crab steering allows the rover to keep its **3m² solar array** perpendicularly oriented to the sun while moving in any direction.
*   **Logistics Efficiency:** The chassis can change ground clearance and level itself to pick up or deposit standardized ISO-style lunar cargo containers.

## Missions
*   **Griffin M1 (Mission FLIP):** Targeted for launch on Astrobotic's Griffin lander (2026).
*   **SpaceX Starship:** Planned for larger fleet deployments (NET 2026).

## Resources
*   [Venturi Astrolab Website](https://www.astrolab.space/)
