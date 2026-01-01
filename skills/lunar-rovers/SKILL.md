---
name: lunar-rovers-expert
description: Specialized skill for analyzing lunar rover technical specifications and mobility systems within the LORS framework.
---

# Lunar Rovers Expert Skill

## Domain Knowledge
- **Directory**: `rovers/` (contains individual `*.MD` files for each rover)
- **Metadata Format**: YAML frontmatter at the top of each file with fields: `id`, `name`, `developer`, `class`, `status`, `physical` (mass, dimensions), `power`, `comms`.

## Instructions
1. **Mobility Data Collection**: Collect and catalog specifications for all mobile systems, including conventional rovers, micro-swarms (Colmena), and deployable cameras (EagleCam).
2. **Communication Protocol Tracking**: Document all reported communication methods, including **LTE/4G**, **WiFi**, and traditional **S-band/X-band**.
3. **Deployment State Analysis**: Track how communication and power interfaces transition from **wired (lander-attached)** to **wireless (deployed/surface)**.
4. **Source Attribution**: Always include links to official developer pages, technical papers, or GitHub repositories for each rover profile.
