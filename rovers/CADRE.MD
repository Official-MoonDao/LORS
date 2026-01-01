---
id: cadre
name: CADRE (Cooperative Autonomous Distributed Robotic Exploration)
developer: JPL
type: Micro
class: Science / Swarm
status: Planned
physical:
  mass_kg: 10
  mobility:
    type: "4-wheel independent"
    autonomy: "Distributed Swarm Intelligence"
comms:
  wireless:
    type: "Mesh Network (Rover-to-Rover)"
    standard: "802.11 Wi-Fi (modified)"
    relay: "Relay via Nova-C lander to Earth"
---

# CADRE

## Overview
CADRE is a technology demonstration by JPL consisting of a trio of shoebox-sized rovers.

## Communication Systems
CADRE demonstrates a resilient, peer-to-peer communication model:
*   **Swarm Mesh:** The three rovers form a local **802.11-based Wi-Fi mesh network**, allowing them to share mapping data and coordinate movements autonomously.
*   **Lander Gateway:** One rover acts as a gateway to the **Nova-C** lander's high-gain antenna for data backhaul to Earth.
*   **Autonomy:** The rovers perform distributive computing, electing "leaders" and adjusting mission plans locally without waiting for Earth-based commands.

## Mobility & Science
*   **Mapping:** Equipped with stereo cameras to create 3D maps of the lunar surface.
*   **Ground Penetrating Radar:** Demonstrates multi-static radar observations by coordinating positions across the swarm.
*   **Egress:** Deployed from the Nova-C lander using a specialized canister deployer.

## Resources
*   [CADRE Fact Sheet (PDF)](https://d2pn8kiwq2w21t.cloudfront.net/documents/CADRE-Fact-Sheet.pdf)
*   [JPL CADRE Project](https://www.jpl.nasa.gov/missions/cadre)
