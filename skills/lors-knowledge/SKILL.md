---
name: lors-knowledge-master
description: Primary entry point for the Lunar Open-source Rover Standard (LORS). Use this to find specialized information about rovers, landers, missions, and companies.
---

# LORS Knowledge Master Skill

This skill allows the AI to navigate and synthesize the LORS documentation and data registry.

## Core Data Philosophy
The LORS registry uses **Markdown with YAML metablocks**. 
- **Human Content**: General descriptions and mission context.
- **AI Content**: YAML blocks containing precise technical fields.

## Specialized Experts
When asked about specific categories, refer to these sub-skills:
- **Rovers**: `lunar-rovers-expert` (for mobility and technical specs)
- **Landers**: `lunar-landers-expert` (for interface and capacity specs)
- **Missions**: `lunar-missions-expert` (for timelines and manifest data)
- **Entities**: `space-entities-expert` (for company and agency profiles)

## Navigation Guide
1. **Always check root files first**: Data is stored in `LUNAR_ROVERS.MD`, `LUNAR_LANDERS.MD`, `LUNAR_MISSIONS.MD`, and `SPACE_ENTITIES.MD`.
2. **Parse YAML**: Extract fields from the ` ```yaml ` blocks for high-precision data.
3. **Cross-Reference**: Link Mission IDs to Payload IDs across different files.