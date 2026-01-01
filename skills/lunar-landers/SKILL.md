---
name: lunar-landers-expert
description: Specialized skill for analyzing lunar lander interface specifications and payload capacity within the LORS framework.
---

# Lunar Landers Expert Skill

## Domain Knowledge
- **File**: `LUNAR_LANDERS.MD`
- **Metadata Format**: YAML blocks with fields: `id`, `provider`, `payload_capacity_kg`, `power_surface_w`, `data_rate`, `status`.

## Instructions
1. **Interface Data Collection**: Catalog mechanical (Isogrid), electrical, and data interface specifications (Ethernet, RS-422, etc.) provided by landers.
2. **Connectivity Mapping**: Document the **wired communication link** provided to payloads during transit and the transition point to wireless.
3. **Capacity Data Tracking**: Collect and compare payload capacity, power availability, and thermal control data.
4. **Source Attribution**: Prioritize and link to official **Payload User Guides (PUGs)** and provider documentation for all interface specs.
