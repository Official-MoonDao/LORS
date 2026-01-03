---
id: griffin
name: Griffin
provider: Astrobotic
class: Medium Logistic
status: Planned
physical:
  payload_capacity_kg: 625
  height_m: 2.0
  width_m: 4.5
power:
  surface_power_w: "1.0 W/kg (Nominal), 2.5 W/kg (Peak)"
  options: ["Deployable Solar Panels"]
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

# Griffin

## Overview
Griffin is a medium-class lunar lander developed by Astrobotic, sharing the same "common spacecraft bus" architecture as Peregrine but scaled for much larger missions. It is specifically optimized for heavy rover delivery and long-duration surface science at the lunar poles.

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
*   **Auxiliary Services:** **DHL MoonBox** (prices start at $460); integration fees may apply for payloads < 1 kg.
*   **Payload Capacity:** 625 kg (Mid-Latitude & Polar configurations).

## Technical Systems

### 1. Propulsion System
*   **Main Engines:** 5 pulsed hypergolic engines, each producing **3,114 N** of thrust. Maximum burn duration is **20 minutes** for maneuvers (excluding Powered Descent, which lasts ~2 hours).
*   **ACS Thrusters:** 12 thrusters in clusters of three, each producing **111 N** of thrust (enabling 6-DOF control).
*   **Propellants:** M20 fuel and Mixed Oxides of Nitrogen (MON-3) oxidizer (providing enhanced Delta-V for high-mass payloads).
*   **Pressurant:** Helium.

### 2. Guidance, Navigation, and Control (GNC)
*   **Sensors:** Star tracker, sun sensors, Inertial Measurement Unit (IMU).
*   **Landing Assistance:** Doppler LiDAR (range/range rate) and the **Optical Precision Autonomous Landing (OPAL)** sensor (terrain-relative navigation).
*   **Orientation:** Maintains sun-pointing during cruise; autonomous descent from 100km to touchdown.

### 3. Avionics & Command Handling
*   **Flight Computer:** 32-bit dual-core **LEON3 FT** microprocessor (rad-hard, fault-tolerant).
*   **Payload Computer:** Pair of radiation-tolerant **FPGAs** housed in the Integrated Avionics Unit (IAU). Manages monitoring, contractual services, and networking.
*   **Power Circuits:** Payloads are allocated **two distinct circuits**:
    1.  **Operations/Heater Circuit**: For nominal tasks and thermal survival.
    2.  **Actuation/Deployment Circuit**: Dedicated for mechanical release events.
*   **Power Rail:** 28 ± 5% Vdc (unregulated and regulated distribution; **current-regulated, current-monitored, and over-voltage protected**).
*   **Grounding:** Single-point ground architecture; payloads must bond all conductive elements to the lander chassis at the **Vehicle Point of Contact (VPC)**.
*   **Timing:** "Time at the Tone" UTC synchronization service (Note: **Requires Regular SEC** interface).
*   **Telemetry Verification:** Payload data is transmitted transparently via a VPN tunnel without lander-side modification (supports end-to-end encryption).

### 4. Structural Composition
*   **Material:** Lightweight aluminum alloy.
*   **Layout:** Solid deck panels tied to **four main radiator panels** (providing double the mounting/cooling area of the Peregrine-class bus).
*   **GM1 Special Config:** Features specialized upper cone and dual egress ramps for heavy rovers (NASA's VIPER).
*   **Landing Gear:** Four landing legs with shock absorbers stabilized for the 625kg lander mass.

### 5. Thermal Control Architecture
*   **Passive Systems:** Utilizes **Passive Heat Pipes** to direct excess heat to radiators and **Multi-Layer Insulation (MLI)** blankets to mitigate solar flux during cruise.
*   **Active Systems:** Supports autonomous and customer-commanded **Heaters** for sensitive components; payloads may utilize the secondary 28V power circuit for dedicated heater power.

## Landing & Surface Environment
*   **Landing Accuracy:** **100 m x 100 m** (with OPAL).
*   **Effective Slope Constraint:** Target sites are selected with an effective slope of **≤ 10°**.
*   **Rock Hazard Limit:** Sites with a maximum expected rock height of **0.3 m** are preferred.
*   **Surface Timing:** Lands nominally **55-110 hours after local sunrise** to ensure optimal thermal stability and battery state-of-health.
*   **Duration:** Up to 14 Earth days at the poles (depending on lighting).
*   **Dust Mitigation:** Payloads are responsible for shielding/dust covers to mitigate lander-induced regolith displacement.

## Environmental Specifications

| Factor | Specification | Note |
| :--- | :--- | :--- |
| **Random Vibration** | 14.1 Grms | Qualification duration: 2 mins/axis |
| **Acoustic Loads** | Transonic/Lift-off | < 2 min duration; qualification per GEVS |
| **Shock** | < 300 G peak | Envelopes landing and separation events |
| **Pressure Drop** | < -5.0 kPa/s | Max drop during transonic flight |
| **Operating Pressure**| 101.25 kPa to 3.2×10⁻⁵ kPa | Sea level to deep space vacuum |
| **Humidity** | 50% ± 15% | Pre-launch (cleanroom environment) |
| **Outgassing (TML)** | < 1.0% | Total Mass Loss limit |
| **Outgassing (CVCM)**| < 0.1% | Collected Volatile Condensable Material |
| **Radiation (near-Earth)** | 20 rads/day | Trapped radiation (Van Allen belts) |
| **Radiation (interplan.)**| 1 rad/day | Interplanetary dosage (outside Earth's field) |
| **Thermal (Launch)** | 10°C to 30°C | Ground and ascent environment |
| **Thermal (Cruise)** | -20°C to 50°C | Maintains via "Thermal Roll" maneuver |
| **Thermal (Orbit)** | -120°C to 100°C | Extremes during eclipse cycles |
| **Thermal (Surface)** | -30°C to 80°C | Shadowed vs Sun-lit extremes |
| **Cleanroom** | ISO Class 8 (100k) | Required for assembly/integration |

## Ground Segment & Operations
*   **Mission Control (AMCC):** The **Astrobotic Mission Control Center** in Pittsburgh serves as the central data hub.
*   **Payload Control (PMCC):** Customers operate their own **Payload Mission Control Centers**, accessing the lander network via a secure **Virtual Private Network (VPN)**.
*   **On-site Presence:** Each payload mission requires an **on-site representative** at AMCC during flight operations for rapid response to off-nominal conditions.
*   **Ground Support:** Astrobotic provides standardized networking, ensuring telecommands and telemetry are delivered without modification (supporting customer-side encryption).

## Service Mode Matrix

### Power Services
| Mode | Provision | Note |
| :--- | :--- | :--- |
| **OFF** | No power | Minimum state |
| **NOMINAL** | 1.0 W/kg | Default state across all phases |
| **PEAK** | 2.5 W/kg | As scheduled on surface |
| **RELEASE** | 30 W peak | For ~60 seconds (actuation/deployment) |

### Data Services
| Mode | Bitrate | Availability |
| :--- | :--- | :--- |
| **OFF** | 0 bps | Minimum state |
| **HEARTBEAT** | 10 bps / payload | Continuous transit (state of health) |
| **NOMINAL** | 10 kbps / kg | 7 hours per 8-hour cycle (surface) |
| **RELEASE** | 10 kbps / kg | During separation window |

## Communication Systems
Griffin provides three distinct data layers:

### 1. Earth-to-Moon (Lander-to-Ground)
*   **Frequency:** X-Band (uplink/downlink).
*   **Latency:** Nominal one-way latency of **4 seconds**.
*   **Antennas:** Actuated Medium/High Gain Antenna (Surface) for high bandwidth.

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
*   **Primary Decks**: Four main radiator decks providing a total of **2.1 m²** of mounting area.
*   **Material**: Solid deck panels designed to double as thermal radiators.
*   **Bolt Pattern**: M5 bolts with locking helicoil inserts; **75 mm** center-to-center spacing.
*   **Adapter Plates**: Recommended to decouple payload design from lander drilling. **Note: Adapter plate mass is considered part of the payload's mass allocation.**
*   **Conductance Requirement**: Payloads must be thermally isolated (**< 0.1 W/K**).
*   **Grounding**: Single-point ground architecture; payloads must bond all conductive elements to the lander chassis at the **Vehicle Point of Contact (VPC)**.

## Deployment & Egress
*   **Egress Modes**: Supports Safe, Arm, and Fire (release signal) sequences.
*   **GM1 Egress**: Dual ramps for heavy rover deployment (e.g. VIPER).
*   **Orbital Egress**: Payload must provide at least **0.04 m/s** separation velocity.
*   **Keep-out Zone**: Orbital dynamics (loop-backs) must occur outside a **1 km radius** keep-out zone relative to the lander.
*   **Mechanism Standards**: Non-pyrotechnic required for surface deployments; must impart **< 300 g** shocks; proven designs for orbital release.
*   **Separation Confirmation**:
    1.  Provision of release signal to SEC interface.
    2.  **Visual Confirmation** via lander status cameras.

## Mission Trajectory & Orbits
Griffin typically utilizes three distinct lunar orbits before landing:
*   **LO1 (Initial)**: Highly elliptical (100 km x 8,700 km). Duration: ~12 hours.
*   **LO2 (Deployment)**: Stable elliptical (**100 km x 750 km**). **Primary orbit for all orbital payload deployments.**
*   **LO3 (Preparation)**: Circular (100 km x 100 km). Duration: ~72 hours for descent prep.

## Descent Profile
The autonomous descent sequence following LO3 consists of four primary stages:
1.  **Unpowered Descent**: Braking maneuver followed by coast (**100 km down to 15 km**).
2.  **Powered Descent**: Continuous main engine firing slow-down (**15 km down to 1 km**).
3.  **Terminal Descent**: Targeted guidance to landing site using OPAL/LiDAR (**1 km down to 300 m**).
4.  **Terminal Descent Nadir**: Horizontal velocity reduction and final vertical descent (**300 m to surface**; constant vertical velocity maintained from **30 m** to touchdown).

## Integration & Milestones

### 1. Mission Review Milestones
Astrobotic supports/leads the following industry-standard reviews:
*   **PDR/CDR**: Preliminary and Critical Design Reviews (Payload-led, Astrobotic-supported).
*   **PAR (Payload Acceptance Review)**: L-Minus 9 Months (occurs in Pittsburgh, PA). Flight models delivered for final verification.
*   **SIR (System Integration Review)**: Determination of readiness for assembly.
*   **TRR (Test Readiness Review)**: Readiness for integrated environmental testing.
*   **LRR/FRR/ORR**: Launch, Flight, and Operational Readiness Reviews.

### 2. Documentation Suite
Payload missions are governed by the following contractual and technical documents (often referenced by **APR** codes - Astrobotic Payload Requirements):
*   **PSA**: Payload Services Agreement (Overarching contract).
*   **SOW**: Statement of Work (Specific responsibilities).
*   **IDD**: Interface Definition Document (Lander standards).
*   **ICD**: Interface Control Document (Payload-specific technical interface).
*   **PIP**: Payload Integration Plan (Schedules/V&V).
*   **POP**: Payload Operations Plan (Handling and surface procedures).

### 3. Integration Window
*   **Integration Window**: L-Minus 9 to L-Minus 5 Months.

## Mission Phases & Timeline
| Phase | Duration | Key Activities |
| :--- | :--- | :--- |
| **Launch** | 1 - 3 Hours | Lift-off (**Falcon Heavy** baseline for GM1). |
| **Cruise** | 3 - 33 Days | TLI, maneuvers, thermal roll. |
| **Lunar Orbit** | 4 - 25 Days | LOI, orbital payload deployment. |
| **Surface Ops** | Up to 14 Days | Southern Pole landing, heavy rover egress. |

## Missions
*   **Griffin Mission One (GM1):** Selected to deliver NASA's Volatiles Investigating Polar Exploration Rover (VIPER) to the lunar South Pole. (Note: NASA later cancelled VIPER for budget/schedule reasons, but the Griffin platform remains the baseline for heavy logistic delivery).

## Resources
*   [Griffin Product Page](https://www.astrobotic.com/griffin/)
*   [Astrobotic Website](https://www.astrobotic.com/)
