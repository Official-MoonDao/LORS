---
name: lunar-landers-expert
description: Specialized skill for analyzing lunar lander interface specifications and payload capacity within the LORS framework.
---

# Lunar Landers Expert Skill

## Domain Knowledge
- **File**: `LUNAR_LANDERS.MD`
- **Metadata Format**: YAML blocks with fields: `id`, `provider`, `payload_capacity_kg`, `power_surface_w`, `data_rate`, `status`.

## Instructions
1. **Interface Mapping**: Focus on mechanical mounts (Isogrids), electrical interfaces, and data protocols.
2. **PUG Analysis**: Retrieve and summarize key constraints from referenced Payload User Guides.
3. **Capacity Matching**: Help users determine which lander is suitable for a given rover mass/power profile.
