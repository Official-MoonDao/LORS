---
id: viper
name: VIPER (Volatiles Investigating Polar Exploration Rover)
developer: NASA
type: Utility
class: Science
status: Canceled (Mothballed)
mobility:
  type: "4-wheel active suspension (In-situ steering)"
  speed_cm_s: 20
  climb_grade_deg: 15
  drill_depth_m: 1.0
comms:
  wireless:
    type: "Direct-to-Earth (DTE)"
    band: "X-Band"
    antenna: "High-Gain / Low-Gain"
    data_rate: "2.3 Mbps (Nominal)"
---

# VIPER

## Overview
The Volatiles Investigating Polar Exploration Rover (VIPER) is a lunar rover developed by NASA to explore the south pole of the Moon. It is designed to prospect for lunar resources, specifically water ice, in permanently shadowed regions.

## Communication Systems
VIPER was designed for high-availability direct links:
*   **Direct-to-Earth:** Utilized a steerable **X-Band** High-Gain Antenna to communicate directly with the Deep Space Network (DSN), bypassing the lander relay for primary telemetry.
*   **Data Rates:** Capable of **2.3 Mbps**, enabling real-time downlink of NIRVSS and MSolo science data.
*   **Near-Real-Time Control:** Drivers at NASA Ames would operate the rover with a round-trip latency of 4-6 seconds.

## Mobility & Polar Benchmarks
*   **Active Suspension:** Features an independent suspension system that allows "inch-worming" and wheel walking to extract the rover from deep, soft regolith.
*   **Thermal Design:** Engineered to survive extreme cold for 100 days, including traversing into and out of Permanently Shadowed Regions (PSRs).
*   **Drill System:** TRIDENT (The Regolith and Ice Drill for Exploring New Terrain) - a rotary-percussive drill designed to capture volatiles at 1-meter depths.

## Status Note
NASA officially canceled the VIPER mission in July 2024 due to cost increases and schedule delays. The hardware was disassembled, but the **TRIDENT** drill and other instruments are being repurposed for other CLPS missions (e.g., Griffin M1/CP-12).

## LORS Relevance
*   Acts as a reference for "Utility Class" drilling interfaces.
*   Sets benchmarks for thermal survival in Permanently Shadowed Regions (PSRs).

## Resources
*   [NASA VIPER Mission Page](https://science.nasa.gov/mission/viper)
