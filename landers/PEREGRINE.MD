---
id: peregrine
name: Peregrine
provider: Astrobotic
class: Light Logistic
status: Flown (Lost)
physical:
  payload_capacity_kg: 100
  height_m: 1.9
  width_m: 2.5
power:
  surface_power_w: "1.0 W/kg (Nominal), 2.5 W/kg (Peak)"
comms:
  earth_to_moon:
    band: "X-Band"
    latency_s: 4.0
    availability: "8-hour cycles (nominal)"
  wired:
    interfaces: ["RS-422", "SpaceWire"]
    protocols: ["SLIP", "UDP"]
  wireless:
    standard: "802.11n WLAN"
    frequency: "2.4 GHz"
---

# Peregrine

## Overview
Peregrine is part of Astrobotic’s common spacecraft bus family, designed for reliable delivery of small to medium payloads to lunar orbit and the lunar surface. It features a modular design adapted for various delivery locations.

## Service Pricing & Capacity
*   **Lunar Surface:** $1,200,000/kg
*   **Lunar Orbit:** $300,000/kg
*   **Delivery on Rover:** $4,500,000/kg
*   **Payload Capacity:** 100 kg (Mid-Latitude & Polar configurations)

## Configuration Types
*   **Mid-Latitude:** Features top-mounted solar panels and side radiators. Optimized for 40° - 50° N/S.
*   **Polar:** Features side-mounted solar panels to capture low-angle light. Avionics are mounted to a top-side radiator.

## Technical Systems

### 1. Propulsion System
*   **Main Engines:** 5 pulsed hypergolic engines, each producing **667 N** of thrust.
*   **ACS Thrusters:** 12 thrusters in clusters of three, each producing **45 N** of thrust (enabling 6-DOF control).
*   **Propellants:** Mono-Methyl-Hydrazine (MMH) fuel and 25% Mixed Oxides of Nitrogen (MON-25) oxidizer.
*   **Pressurant:** Helium (held in a central tank).

### 2. Guidance, Navigation, and Control (GNC)
*   **Sensors:** Star tracker, sun sensors, Inertial Measurement Unit (IMU).
*   **Landing Assistance:** Doppler LiDAR (range/range rate) and the **Optical Precision Autonomous Landing (OPAL)** sensor (terrain-relative navigation).
*   **Orientation:** Maintains sun-pointing during cruise; autonomous descent from 100km to touchdown.

### 3. Avionics & Command Handling
*   **Flight Computer:** 32-bit dual-core **LEON3 FT** microprocessor (rad-hard, fault-tolerant).
*   **Payload Computer:** Pair of radiation-tolerant **FPGAs** housed in the Integrated Avionics Unit (IAU). Manages monitoring, contractual services, and networking.
*   **Power Rail:** 28 Vdc (unregulated and regulated distribution).

## Environmental Specifications

| Factor | Specification | Note |
| :--- | :--- | :--- |
| **Random Vibration** | 14.1 Grms | Qualification duration: 2 mins/axis |
| **Shock** | < 300 G peak | Envelopes landing and separation events |
| **Total Ionizing Dose** | < 1 krad | Design life for ~8 months |
| **Thermal (Orbit)** | -120°C to 100°C | Extremes during eclipse cycles |
| **Thermal (Surface)** | -30°C to 80°C | Shadowed vs Sun-lit extremes |
| **Cleanroom** | ISO Class 8 (100k) | Required for assembly/integration |

## Communication Systems
Peregrine provides three distinct data layers:

### 1. Earth-to-Moon (Lander-to-Ground)
*   **Frequency:** X-Band (uplink/downlink).
*   **Latency:** Nominal one-way latency of **4 seconds**.
*   **Duty Cycle:** 8-hour cycle (7 hours Nominal, 1 hour OFF).

### 2. Wired Connection (Lander-to-Payload)
*   **Physical:** Standard Electrical Connector (SEC) - MIL-DTL-38999 Series III.
*   **Interfaces:** RS-422 (Serial/SLIP/UDP) and SpaceWire (High-speed).
*   **Timing:** "Time at the Tone" UTC synchronization service.

### 3. Wireless Connection (Lander-to-Deployed Payload)
*   **Standard:** IEEE **802.11n WLAN** (Wi-Fi).
*   **Frequency:** 2.4 GHz.

## Mechanical Mounting
*   **Primary Decks:** Two open isogrid aluminum decks (~0.5 m² area per side).
*   **Bolt Pattern:** M5 bolts with locking helicoil inserts; **75 mm** center-to-center spacing.
*   **Conductance Requirement:** Payloads must be thermally isolated (< 0.1 W/K).
*   **Grounding:** Single-point ground architecture.

## Mission Phases & Timeline
| Phase | Duration | Key Activities |
| :--- | :--- | :--- |
| **Launch** | 1 - 3 Hours | Lift-off to separation. |
| **Cruise** | 3 - 33 Days | TLI, maneuvers, thermal roll. |
| **Lunar Orbit** | 4 - 25 Days | LOI, orbital payload deployment. |
| **Surface Ops** | 192+ Hours | Landing, rover egress, science. |

## Missions
*   **Mission 1 (PM1):** Launched January 8, 2024. Despite a propulsion leak preventing a soft landing, the lander operated as a data relay for 10 days in cislunar space, proving the bus's communication and power resilience.

## Resources
*   [Peregrine Payload User's Guide (PUG) v4.0](https://www.astrobotic.com/wp-content/uploads/2021/01/Peregrine-Payload-Users-Guide.pdf)
*   [Astrobotic Website](https://www.astrobotic.com/)
