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
*   **Main Engine:** Bi-propellant apogee engine for lunar insertion and descent.
*   **Reaction Control System (RCS):** Hydrazine thrusters for attitude control.
*   **Heritage:** Utilizes ArianeGroup high-reliability space-qualified components.

### 2. Thermal Management
HAKUTO-R employs a balanced thermal architecture:
*   **Insulation:** High-efficiency **Multi-Layer Insulation (MLI)**.
*   **Active Control:** Heater circuits maintain avionics within a safe 5°C margin during cruise and lunar morning.
*   **Validation:** Successfully passed full Thermal Vacuum (TVAC) testing for both Mission 1 and Mission 2.

## Communication Architecture

### Wired Interface (Lander-to-Payload)
*   **Interface:** RS-422 via the **Payload Interface Card (PIF)**.
*   **Physical:** Micro-D connector (combined power and data).
*   **Performance:** 921,600 bps verified via the Deep Space Radiation Probe (DSRP).
*   **Protocol:** UART-to-RS-422 conversion required at the payload level.

### Wireless Relay
*   **Operation:** Verified X-Band link used for **TENACIOUS** and **Sora-Q** rover telemetry.

## Roadmap & Evolution
Starting with **Mission 3**, the program transitions to the **APEX 1.0** (Series 2) lander led by **ispace-U.S.**, featuring 300kg+ capacity and lunar night survival.

*   See: [APEX 1.0 Documentation](./APEX_1.MD)

## Mission Profiles (Series 1)

| Phase | Duration | Details |
| :--- | :--- | :--- |
| **Cruise / Transfer** | ~135 Days | Low-energy trajectory (verified in M1). |
| **Lunar Orbit** | ~30 Days | Insertion and checkout phase. |
| **Surface Ops** | ~12 Days | 1 Lunar Day (sunlight only). |

## Resources
*   [ispace HAKUTO-R Program](https://ispace-inc.com/hakuto-r/)
*   [ispace Mission 2 'Resilience'](https://ispace-inc.com/m2)
*   [ArianeGroup Lunar Propulsion](https://www.ariane.group/en/news/ispace-chooses-arianegroup-for-h-r-missions/)
