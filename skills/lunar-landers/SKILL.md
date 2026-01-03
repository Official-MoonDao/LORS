---
name: lunar-landers-expert
description: Specialized skill for analyzing lunar lander interface specifications and payload capacity within the LORS framework.
---

# Lunar Landers Expert Skill

## Domain Knowledge
- **Directory**: `landers/` (contains individual `*.MD` files for each lander)
- **Metadata Format**: YAML frontmatter at the top of each file with fields: `id`, `name`, `provider`, `class`, `status`, `physical` (capacity), `power`, `comms`.
- **Primary Source**: **Payload User's Guide (PUG)** is the gold standard for technical ground-truth.

## Instructions
1. **Exhaustive Interface Mapping**:
    - **Wired Connection**: Document physical connector standards (e.g., MIL-DTL-38999 Series III / Glenair SuperNine), pinout variants (e.g., Regular vs Small SEC), and supported protocols (RS-422/SLIP/UDP, SpaceWire).
    - **Wireless Connection**: Map 802.11n/Wi-fi details, especially for deployed rovers.
    - **Timing Services**: Note "Time at the Tone" or NTP-equivalent UTC synchronization.

2. **Environmental & Structural Load Analysis**:
    - **Mechanical Loads**: Extract Random Vibration (Grms), Shock (G peak), and Acoustic (dB/Freq) qualification levels. Note duration (e.g., 2 mins/axis).
    - **Atmospheric/Pressure**: Document pressure drop rates (kPa/s) and humidity limits (Pre-launch).
    - **Radiation**: Differentiate between near-Earth (Van Allen) and interplanetary dosage (rad/day).
    - **EMI/EMC**: Cite specific standards (e.g., MIL-STD-461G) and test categories (CE102, RE102, etc.).

3. **Phase-Specific Service Modes**:
    - Build matrices for **Power** (Nominal/Peak/Release in W/kg) and **Data** (Heartbeat/Nominal/Release in bps or kbps/kg).
    - Identify duty cycles (e.g., 8-hour AOS/LOS cycles) and service durations (e.g., 60s release window).

4. **Landing & Deployment Logic**:
    - **Geographic Precision**: Catalog landing accuracy (m), effective slope limits (degrees), and rock hazard tolerances (m).
    - **Solar Logic**: Distinguish between Top-mounted (equatorial/mid-lat) and Side-mounted (polar) configurations.
    - **Deployment (Egress)**: Document Safe/Arm/Fire logic, separation velocities (e.g., 0.04 m/s in orbit), and verification methods (visual/telemetry).

5. **Mission Trajectory & Orbits**:
    - Detail specific parking/deployment orbits (LO1/LO2/LO3) with altitudes (km) and durations (hours).
    - Map the descent profile from coasting to terminal nadir (m).

6. **Service Economics**:
    - Standard pricing per kg (Orbit/Surface/Rover).
    - Auxiliary services (e.g., DHL MoonBox) and small payload (<1kg) surcharges.

7. **Source & Entity Context**:
    - Cite PUG versions. Link `provider` to `SPACE_ENTITIES.MD`.

