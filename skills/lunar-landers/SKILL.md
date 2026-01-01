---
name: lunar-landers-expert
description: Specialized skill for analyzing lunar lander interface specifications and payload capacity within the LORS framework.
---

# Lunar Landers Expert Skill

## Domain Knowledge
- **Directory**: `landers/` (contains individual `*.MD` files for each lander)
- **Metadata Format**: YAML frontmatter at the top of each file with fields: `id`, `name`, `provider`, `class`, `status`, `physical` (payload_capacity, dimensions), `power`, `comms`.

## Instructions
1. **Interface Data Collection**: Catalog mechanical (Isogrid), electrical, and data interface specifications (Ethernet, RS-422, etc.) provided by landers.
2. **Connectivity Mapping**: Document the **wired communication link** provided to payloads during transit and the transition point to wireless.
3. **Capacity Data Tracking**: Collect and compare payload capacity, power availability, and thermal control data.
4. **Source Attribution**: Prioritize and link to official **Payload User Guides (PUGs)** and provider documentation for all interface specs.
5. **Entity Context**: Cross-reference the `provider` field with `SPACE_ENTITIES.MD`. Ensure the provider name in the body is linked to its entry in the entities index.
