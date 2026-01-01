---
id: starship_hls
name: Starship Human Landing System (HLS)
developer: SpaceX
type: Crew / Heavy Cargo
class: Infrastructure
status: In-Development
physical:
  height_m: 52.3
  diameter_m: 9.0
  habitable_volume_m3: 600
  cargo_capacity_metric_tons: 100
power:
  source: "External Solar Arrays & Radiators"
  generation: "Propellant Depot-derived Power Module"
comms:
  earth_to_moon:
    band: ["S-Band", "Ka-Band"]
    antennas: ["16 Low-Gain (S-Band) pods", "4 High-Gain Gimbaled Parabolic"]
    network: "DSN / Gateway / Earth Ground Stations"
  surface_links:
    standard: "IEEE 802.11ac (Wi-Fi)"
    frequency: "5.8 GHz"
    application: "Lunar Surface EVA & Rover Relay"
  landing_sensor:
    type: "Ka-Band Landing Radar"
---

# Starship HLS

## Overview
The Starship Human Landing System (HLS) is the lunar-optimized variant of SpaceX's Starship. It is the primary vehicle selected by NASA for the Artemis III and IV missions to return humans to the lunar surface. 

## Technical Architecture
*   **Scale:** With over 600 cubic meters of pressurized volume, Starship HLS is the largest lunar lander ever designed, capable of supporting a crew of four for extended durations.
*   **Propulsion:** Powered by Raptor engines burning liquid oxygen (LOX) and liquid methane (LCH4). The HLS variant lacks atmospheric flaps and heat shielding, as it is designed to operate exclusively in the vacuum of space (rendezvous in NRHO and landing on the Moon).
*   **Egress:** Features a high-capacity pressurized elevator and dual EVA airlocks to facilitate crew and cargo transfer from the cabin height (~30m above surface) to the lunar regolith.

## Communication Systems
*   **Multi-Layer Comms:** Employs a robust suite of sixteen S-band antennas for continuous tracking and telemetry throughout descent and surface operations.
*   **Surface Networking:** Pioneering the use of high-bandwidth **5.8 GHz Wi-Fi (802.11ac)** for proximity communication with rovers and astronauts during Extravehicular Activities (EVAs).
*   **Gateway Integration:** Designed to interface directly with the Lunar Gateway for bidirectional high-rate data and video downlink.

## Mission Phases
1.  **Launch & Refill:** Starship HLS launches to LEO, where it is refilled by a fleet of Starship tankers.
2.  **Lunar Transfer:** Executes a Trans-Lunar Injection (TLI) to enter a Near-Rectilinear Halo Orbit (NRHO).
3.  **Rendezvous:** Docks with Orion or Gateway to take on crew.
4.  **Landing:** High-precision autonomous descent to the lunar south pole.
5.  **Ascent:** Returns crew to NRHO/Orion; the HLS remains in lunar orbit for disposal or future reuse.

## LORS Relevance
*   **Heavy Cargo Standard:** The 100-metric-ton cargo capacity allows for the delivery of entire lunar base modules, internal rovers, and large-scale industrial equipment.
*   **Wi-Fi Node:** Sets the 5.8 GHz 802.11ac standard for local surface networks, which LORS-compliant rovers must support for high-bandwidth operations.

## Resources
*   [SpaceX Starship Page](https://www.spacex.com/vehicles/starship/)
*   [NASA HLS Program](https://www.nasa.gov/humans-in-space/nasas-human-landing-system/)
