---
name: lunar-landers-expert
description: Specialized skill for analyzing lunar lander interface specifications and payload capacity within the LORS framework.
---

# Lunar Landers Expert Skill

## Domain Knowledge
- **Directory**: `landers/` (contains individual `*.MD` files for each lander)
- **Metadata Format**: YAML frontmatter at the top of each file with fields: `id`, `name`, `provider`, `class`, `status`, `physical`, `power`, `comms`, `phases`.
- **Communication Layers**: Must distinguish between Earth-to-Moon (relay), Wired (attached), and Wireless (deployed).

## Instructions
1. **Multi-Layer Connectivity Mapping**: Collect details for three distinct data paths:
    - **Earth-to-Moon**: Band (X-Band/S-Band), predicted latency (ping), duty cycles (contact windows vs. LOS), and antenna types (actuated/HGA).
    - **Wired Connection**: Physical connector types (e.g., MIL-DTL-38999), data protocols (RS-422, SpaceWire, Ethernet), and synchronization services (e.g., Time at the Tone).
    - **Wireless Connection**: Standards (802.11n Wi-Fi), frequency (2.4/5 GHz), and the specific trigger/transition point (e.g., post-separation).
2. **Phase-Specific Service Analysis**: Document how **Power** and **Data** modes change across mission phases:
    - **Transition/Cruise**: Power allocation vs. Data heartbeat rates (typically limited).
    - **Lunar Orbit**: Constraints during maneuvers and orbital deployments.
    - **Surface Phase**: Nominal vs. Peak power/data availability and cycle durations (e.g., 8-hour cycles).
3. **Trajectory & Timeline Tracking**: Catalog standard mission durations for Launch, Cruise/Transfer, and Surface operations.
4. **Mechanical & Environmental Specs**: Track mounting interfaces (Isogrid, decks), thermal control (Passive/Radiators), and landing precision (e.g., 100m OPAL status).
5. **Source Attribution**: Prioritize and link to official **Payload User Guides (PUGs)**. All technical parameters must cite the relevant PUG version.
6. **Entity Context**: Cross-reference the `provider` field with `SPACE_ENTITIES.MD`. Ensure the provider name is linked to its entry in the entities index.

