---
id: hakuto-r
name: HAKUTO-R (Series 1)
provider: ispace
class: Light Logistic
status: Active
physical:
  payload_capacity_kg: 30
  dry_mass_kg: 340
  wet_mass_kg: 1000
  dimensions:
    height_m: 2.3
    width_m: 2.6
power:
  generation: "Solar Arrays & Li-ion Battery"
  night_survival: "None (designed for 1 lunar day)"
  interface_w: "Limited (Standard allocation 900mW for DSRP sensors)"
  quality: "Bus ripple allocated per interface; redundant isolated buses used."
comms:
  earth_to_moon:
    band: "X-Band"
    network: "ESA Estrack (35m antennas)"
  relay_support: "Lander-to-Rover (X-Band)"
  wired:
    interfaces: ["RS-422"]
    physical: "Micro-D Connector"
    bit_rate: "921,600 bps"
---

# HAKUTO-R (Series 1)

The HAKUTO-R Series 1 is the first generation lunar lander from **ispace**, serving as a technology demonstrator (Mission 1) and a commercial logistic platform (Mission 2 "Resilience").

## Technical Specifications (Series 1)

### 1. Propulsion System
Designed and supplied by **ArianeGroup GmbH**:
*   **Main Engine:** Bi-propellant apogee engine (Hydrazine/MON) for lunar insertion and descent.
*   **Reaction Control System (RCS):** Six assist thrusters for fine attitude control.
*   **Heritage:** High-reliability space-qualified components including flow control valves and titanium tanks.

### 2. Thermal Management
*   **Insulation:** High-efficiency **Multi-Layer Insulation (MLI)** used on legs and sensitive bays.
*   **Active Control:** Heater circuits maintain avionics within a safe 5°C margin.
*   **Flight Heritage:** Mission 1 reported initial thermal conditions "hotter than anticipated" in cislunar space, managed via orientation adjustments and passive radiators.

## Technical Fine Print (Developer Specs)

### 1. Environmental Loads
*   **Launch Environment:** Qualified for SpaceX Falcon 9 vibration envelopes.
*   **Structural Material:** Extensive use of carbon fiber-reinforced plastics (CFRP) to minimize mass while ensuring stiffness under 14.1 Grms equivalent loads.
*   **Shock:** Payloads are typically isolated from landing shocks via dampened mounting inserts.

### 2. Power & Connectivity
*   **Interfaces:** Payloads interface through a **Payload Interface Card (PIF)**. 
*   **Regulation:** RS-422 timing and baud rates (up to 921,600 bps) verified via the DSRP mission.
*   **Ground Segment:** Secure data playback via the ESA ESTRACK network across four continents.

## Mission Failure Analysis (Lessons Learned)

The Series 1 platform underwent significant software and hardware updates between Mission 1 and Mission 2:

*   **Mission 1 (April 2023):** Software misjudgment of altitude. As the lander passed over a crater rim, the sudden change in terrain altitude was flagged as anomalous by the sensors, leading the flight computer to ignore valid readings. The lander ran out of fuel while hovering 5km above the surface and free-fell.
*   **Mission 2 (June 2025):** Hardware anomaly in the **Laser Range Finder (LRF)**. Despite updated navigation software, an LRF delay prevented timely deceleration for a soft landing at Mare Frigoris.

## Mission Profiles (Series 1)

| Phase | Duration | Details |
| :--- | :--- | :--- |
| **Cruise / Transfer** | ~135 Days | Low-energy trajectory (verified in M1). |
| **Lunar Orbit** | ~30 Days | Insertion and checkout phase. |
| **Surface Ops** | ~12 Days | 1 Lunar Day (sunlight only). |

## Resources
*   [ispace HAKUTO-R Program](https://ispace-inc.com/hakuto-r/)
*   [ispace Mission 1 Post-Landing Analysis](https://ispace-inc.com/news/?p=4654)
*   [ArianeGroup Lunar Propulsion](https://www.ariane.group/en/news/ispace-chooses-arianegroup-for-h-r-missions/)
*   [ESA ESTRACK Support](https://www.esa.int/Enabling_Support/Operations/Ground_Stations_Network)
