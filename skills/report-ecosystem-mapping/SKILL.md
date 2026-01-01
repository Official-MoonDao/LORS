---
name: report-ecosystem-mapping
description: Expert skill for generating the LORS Ecosystem Mapping Document, profiling lunar projects and delivery providers.
---

# Ecosystem Mapping Reporter Skill

## Domain Knowledge
- **Source Document**: `LORS_ Lunar Rover Standard proposition.md`
- **Primary Data Sources**:
  - `LUNAR_ROVERS.MD`
  - `LUNAR_LANDERS.MD`
  - `SPACE_ENTITIES.MD`
  - `LUNAR_MISSIONS.MD`
  - `STUDENT_ROVER_TEAMS.MD`
  - `STANDARDS_AND_DOCS.MD`
- **Dynamic Data Sources**:
  - Technical PDFs (Payload User Guides - PUGs) located in `data/` or workspace.
  - HTML/Text data exports in `data/`.

## Instructions
1. **Data Discovery**:
   - Before profiling, scan the workspace (specifically `data/` folder) for any available PDF Payload User Guides (PUGs) or other technical documentation. Use this information to enrich the profiles.

2. **Rover Project Profiling**:
   - Profile 8-10 current lunar rover projects.
   - For each project, identify the developer, mission status, and key objectives.
   - Cross-reference with `LUNAR_ROVERS.MD`, `STUDENT_ROVER_TEAMS.MD` and `LUNAR_MISSIONS.MD` for context.

3. **Delivery Provider Assessment**:
   - Assess 3-5 lunar delivery providers (landers/transport).
   - Analyze their capabilities, payload capacity, and compatibility with rovers.
   - Cross-reference with `LUNAR_LANDERS.MD`, `SPACE_ENTITIES.MD` and `LUNAR_MISSIONS.MD`.

4. **Architecture & Approach Documentation**:
   - Describe the general architecture and design approach for each profiled project.
   - Identify common trends (e.g., cube rovers, swarm architectures) and divergent strategies.

5. **Report Structure**:
   - The output should support the creation of the "Ecosystem Mapping Document" (target length: 8-10 pages).
   - Expected sections: Executive Summary, Rover Project Profiles, Delivery Provider Assessment, Ecosystem Trends.
