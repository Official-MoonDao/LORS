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

## Payload Classification
Astrobotic recognizes four standard payload types:
*   **Static Passive**: remains attached, does not perform tasks (e.g., memorabilia).
*   **Static Active**: remains attached, performs mission tasks (e.g., science instruments).
*   **Deployable Passive**: detaches from lander, no further tasks (e.g., surface time capsule).
*   **Deployable Active**: detaches from lander, performs mission tasks (e.g., rovers).

## Service Pricing & Capacity
*   **Lunar Surface:** $1,200,000/kg
*   **Lunar Orbit:** $300,000/kg
*   **Delivery on Rover:** $4,500,000/kg
*   **Auxiliary Services:** **DHL MoonBox** (starting at $460 for small memorabilia/items).
*   **Payload Capacity:** 100 kg (Mid-Latitude & Polar configurations). Integration fees may apply for payloads < 1 kg.

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
*   **Telemetry Verification:** Payload data is transmitted transparently via a VPN tunnel without lander-side modification (supports end-to-end encryption).

### 4. Structural Composition
*   **Material:** Lightweight aluminum alloy.
*   **Central Column:** Internal truss structure tying four shear panels together.
*   **Adapter Cone:** Aluminum launch vehicle adapter cone housing the main engines.
*   **Shear Panels:** Isogrid panels supporting fuel tanks, decks, and solar arrays.
*   **Enclosures:** Aluminum honeycomb structures providing thermal protection for avionics.

## Landing & Surface Environment
*   **Landing Accuracy:** Improved from 24 km x 6 km to **100 m x 100 m** (with OPAL).
*   **Effective Slope Constraint:** Target sites are selected with an effective slope of **≤ 10°**.
*   **Rock Hazard Limit:** Sites with a maximum expected rock height of **0.3 m** are preferred.
*   **Surface Timing:** Nominally lands 55-110 hours after local sunrise to maximize daylight operations.
*   **Dust Mitigation:** Lander-induced regolith displacement may take hours/days to settle; payloads are responsible for shielding/dust covers.

## Environmental Specifications

| Factor | Specification | Note |
| :--- | :--- | :--- |
| **Random Vibration** | 14.1 Grms | Qualification duration: 2 mins/axis |
| **Acoustic Loads** | Transonic/Lift-off | < 2 min duration; qualification per GEVS |
| **Shock** | < 300 G peak | Envelopes landing and separation events |
| **Pressure Drop** | < -5.0 kPa/s | Max drop during transonic flight |
| **Operating Pressure**| 101.25 kPa to 3.2×10⁻⁵ kPa | Sea level to deep space vacuum |
| **Humidity** | 50% ± 15% | Pre-launch (cleanroom environment) |
| **Radiation (near-Earth)** | 20 rads/day | Trapped radiation (Van Allen belts) |
| **Radiation (interplan.)**| 1 rad/day | Interplanetary dosage (outside Earth's field) |
| **Total Ionizing Dose** | < 1 krad | Design life for ~8 months |
| **EMI/EMC** | MIL-STD-461G | CE102, CS101/114/115/116, RE102, RS103 |
| **Thermal (Orbit)** | -120°C to 100°C | Extremes during eclipse cycles |
| **Thermal (Surface)** | -30°C to 80°C | Shadowed vs Sun-lit extremes |
| **Cleanroom** | ISO Class 8 (100k) | Required for assembly/integration |

## Service Mode Matrix

### Power Services
| Phase | Mode | Provision |
| :--- | :--- | :--- |
| **Launch** | OFF | No power provided |
| **Cruise / Orbit** | NOMINAL | Default state (1.0 W/kg) |
| **Surface** | NOMINAL | Default state (1.0 W/kg) |
| **Surface** | PEAK | 2.5 W/kg (as scheduled) |
| **Deployment** | RELEASE | 30 W peak for ~60 seconds |

### Data Services
| Phase | Mode | Bitrate | Availability |
| :--- | :--- | :--- | :--- |
| **Launch** | OFF | 0 bps | N/A |
| **Cruise / Orbit** | HEARTBEAT | 10 bps / payload | Continuous transit |
| **Surface** | NOMINAL | 10 kbps / kg | 7 hours per 8-hour cycle |
| **Deployment** | RELEASE | 10 kbps / kg | During separation window |

## Communication Systems
Peregrine provides three distinct data layers:

### 1. Earth-to-Moon (Lander-to-Ground)
*   **Frequency:** X-Band (uplink/downlink).
*   **Latency:** Nominal one-way latency of **4 seconds**.
*   **Duty Cycle:** 8-hour cycle (7 hours Nominal, 1 hour OFF).

### 2. Wired Connection (Lander-to-Payload)
*   **Physical**: Standard Electrical Connector (SEC) - MIL-DTL-38999 Series III.
*   **Connector Variants**:
    *   **Regular SEC**: Supports Power, Power Signal, Data (RS-422/SpaceWire), and Timing.
    *   **Small SEC**: Supports Power, Power Signal, and Power Return only.
*   **Interfaces**: RS-422 (Serial/SLIP/UDP) and **SpaceWire** (requires Regular SEC).
*   **Timing**: "Time at the Tone" UTC synchronization service.

### 3. Wireless Connection (Lander-to-Deployed Payload)
*   **Standard:** IEEE **802.11n WLAN** (Wi-Fi).
*   **Frequency:** 2.4 GHz.

## Mechanical Mounting
*   **Primary Decks**: Two open isogrid aluminum decks (~0.5 m² area per side).
*   **Bolt Pattern**: M5 bolts with locking helicoil inserts; **75 mm** center-to-center spacing.
*   **Payload Envelope**: 
    *   **Above Deck**: 0.57 m max height.
    *   **Below Deck**: 0.38 m max height.
*   **Ground Clearance**: 0.40 m to 0.80 m (nominal upon landing).
*   **Conductance Requirement**: Payloads must be thermally isolated (**< 0.1 W/K**).
*   **Grounding**: Single-point ground architecture.

## Deployment & Egress
*   **Egress Modes**: Supports Safe, Arm, and Fire (release signal) sequences.
    *   **Safe**: Internally disconnected and unpowered.
    *   **Arm**: Customer command to ready internal payload power distribution.
    *   **Fire**: Power signal from lander triggers actuation.
*   **Orbital Egress**: Payload must provide at least **0.04 m/s** separation velocity to ensure keep-out zone compliance (1 km radius).
*   **Mechanism Standards**: Non-pyrotechnic recommended for surface deployments; proven designs required for orbital release.
*   **Separation Confirmation**:
    1.  Provision of release signal to SEC interface.
    2.  **Visual Confirmation** via lander status cameras.

## Mission Trajectory & Orbits
Peregrine typically utilizes three distinct lunar orbits before landing:
*   **LO1 (Initial)**: Highly elliptical (100 km x 8,700 km). Duration: ~12 hours.
*   **LO2 (Deployment)**: Stable elliptical (**100 km x 750 km**). **Primary orbit for all orbital payload deployments.**
*   **LO3 (Preparation)**: Circular (100 km x 100 km). Duration: ~72 hours for descent prep (no deployments).

## Descent Profile
The autonomous descent sequence following LO3 consists of four primary stages:
1.  **Unpowered Descent**: Braking maneuver followed by coast (100 km down to 15 km).
2.  **Powered Descent**: Continuous main engine firing, guided by OPAL and LiDAR (15 km down to 300 m).
3.  **Terminal Descent**: Targeted guidance to landing site (300 m down to 30 m).
4.  **Terminal Descent Nadir**: Constant vertical velocity until touchdown (30 m to surface).

## Integration & Milestones
*   **Payload Acceptance Review (PAR)**: L-Minus 9 Months (occurs in Pittsburgh, PA). Flight models must be delivered for verification.
*   **Integration Window**: L-Minus 9 to L-Minus 5 Months.
*   **Documentation Suite**: Payload missions are governed by:
    *   **IDD**: Interface Definition Document (Standards).
    *   **ICD**: Interface Control Document (Payload-specific).
    *   **PIP**: Payload Integration Plan (Schedules/V&V).
    *   **POP**: Payload Operations Plan (Handling).

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
