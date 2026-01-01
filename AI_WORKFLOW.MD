# How We Work: LORS Project Workflow

**Last Updated**: January 2, 2026  
**For**: Team members, contributors, and collaborators

---

## What This Document Is About

This guide explains **how we organize our work** on the LORS (Lunar Open-source Rover Standard) project. We use a simple system that helps both humans and AI assistants work together effectively.

---

## The Big Idea: Three Simple Principles

### 1. 📁 **One File Per Thing**

Instead of putting everything in one giant document, we create **separate files for each rover, lander, or mission**.

**Why this matters:**
- You can update information about one rover without accidentally changing something else
- Multiple people (or AI assistants) can work at the same time on different files
- It's easier to find what you're looking for
- We can keep adding details over time without making files messy

**Example:**
```
rovers/
  ├── HEMIUNU_01.MD          ← All info about Hemiunu rover
  ├── FLEX_ROVER.MD          ← All info about Flex rover
  └── HELIUM_ROVER.MD        ← All info about Helium rover
```

### 2. 📚 **Skills = Recipe Books for Research**

We store **instructions on how to research specific topics** in the `skills/` folder. Think of these as recipe books that tell AI assistants (and humans!) exactly what information to look for and how to organize it.

**Why this matters:**
- Everyone follows the same process, so our data is consistent
- New team members (or AI assistants) know exactly what to do
- We don't have to re-explain the same thing every time
- Quality stays high because we have clear standards

**Example Skills:**
- `lunar-rovers/` - How to research rover specifications
- `lunar-landers/` - How to research lander capabilities  
- `mission-payloads/` - How to find mission payload information

### 3. 🤖 **Designed for AI Collaboration**

We organize everything so AI assistants can help us efficiently. The AI reads our "skills" (instructions) and then researches, documents, and updates information following our standards.

**Why this matters:**
- AI can do the time-consuming research work
- We get consistent, well-organized documentation
- Humans can focus on analysis and decision-making
- The project grows faster with AI assistance

---

## How Our Files Are Organized

```
LORS/
├── 📄 README.MD                    ← Start here! Project overview
├── 📄 AI_WORKFLOW.MD               ← This document
│
├── 📁 rovers/                      ← Individual files for each rover
│   ├── HEMIUNU_01.MD
│   ├── FLEX_ROVER.MD
│   └── ...
│
├── 📁 landers/                     ← Individual files for each lander
│   ├── BLUE_GHOST.MD
│   ├── NOVA_C.MD
│   └── ...
│
├── 📁 missions/                    ← Individual files for each mission
│   ├── IM1.MD
│   ├── IM2.MD
│   └── ...
│
├── 📁 skills/                      ← Instructions for research
│   ├── lunar-rovers/
│   ├── lunar-landers/
│   ├── lunar-missions/
│   └── ...
│
├── 📁 reports/                     ← Analysis reports we generate
│   ├── ECOSYSTEM_MAPPING.MD
│   └── ARCHITECTURE_ANALYSIS.MD
│
└── 📄 Summary files                ← Quick overview documents
    ├── SPACE_ENTITIES.MD           ← All companies and organizations
    ├── LUNAR_ROVERS.MD             ← Overview of all rovers
    ├── LUNAR_LANDERS.MD            ← Overview of all landers
    └── LUNAR_MISSIONS.MD           ← Timeline of missions
```

---

## Two Types of Files

### **Detailed Files** (in `rovers/`, `landers/`, `missions/`)

These contain **everything we know** about a specific rover, lander, or mission.

Each file has:
- **Structured data at the top** (technical specs, dates, status)
- **Detailed descriptions** below (how it works, what makes it special)
- **Links to sources** (where we got the information)

### **Summary Files** (in the main folder)

These are **quick reference guides** that list everything and link to the detailed files.

Use these when you want to:
- See all rovers at a glance
- Find which companies are involved
- Get a timeline of missions

---

## How We Work: The Process

### When Adding New Information

1. **Check if a file already exists** for what you're documenting
2. **If yes**: Add to the existing file
3. **If no**: Create a new file following our template
4. **Update the summary file** so others can find it
5. **Link related things** (e.g., connect a rover to its company)

### When Working with AI Assistants

1. **Tell the AI what you need** (e.g., "Research the Helium rover specifications")
2. **The AI reads the relevant skill** to know what information to find
3. **The AI researches and creates/updates files** following our standards
4. **You review the results** and provide feedback

### When Generating Reports

1. **Request a specific report** (ecosystem mapping, architecture analysis)
2. **The AI gathers data** from all relevant files
3. **The AI analyzes patterns** and creates insights
4. **The report is saved** in the `reports/` folder

### When Updating Skills with New Information

Our skills evolve as we learn more! This is a common and important part of our workflow:

1. **Start research** on a topic (e.g., researching rover specifications)
2. **Discover new information** during the conversation (e.g., new data formats, additional specs to track)
3. **Update the relevant skill** to include the new information we found
4. **Continue using the improved skill** for future research

**Example:**
- You ask AI to research mission payloads
- During research, you discover missions also list "technology demonstrations"
- You update the `mission-payloads-researcher` skill to include technology demonstrations
- Future payload research will now automatically include this information

**Why this matters:**
- Our skills get smarter over time
- We capture lessons learned from each research session
- Future work benefits from past discoveries
- The quality and completeness of our data continuously improves

---

## What Are "Skills"?

Skills are **step-by-step instructions** stored in the `skills/` folder. Each skill teaches how to research a specific topic.

### Current Skills We Have:

| Skill Name | What It Does |
|------------|--------------|
| **lunar-rovers-expert** | Research rover specs (size, power, mobility) |
| **lunar-landers-expert** | Research lander capabilities (payload, landing precision) |
| **lunar-missions-expert** | Track mission timelines and outcomes |
| **space-entities-expert** | Document companies and organizations |
| **mission-payloads-researcher** | Find what scientific instruments missions carry |
| **report-ecosystem-mapping** | Analyze the market landscape |
| **report-architecture-analysis** | Analyze technical compatibility |

---

## Simple Examples

### Example 1: Adding a New Rover

**You say:** "I found a new rover called 'Moonlight' made by Astrolab"

**What happens:**
1. AI checks if `rovers/MOONLIGHT.MD` exists (it doesn't)
2. AI uses the `lunar-rovers-expert` skill to know what info to find
3. AI researches Moonlight's specs (size, weight, power, etc.)
4. AI creates `rovers/MOONLIGHT.MD` with all the details
5. AI adds Moonlight to the summary in `LUNAR_ROVERS.MD`
6. AI makes sure Astrolab is listed in `SPACE_ENTITIES.MD`

### Example 2: Updating Mission Information

**You say:** "The IM-2 mission launch date changed to March 2026"

**What happens:**
1. AI opens `missions/IM2.MD`
2. AI updates the launch date
3. AI updates the timeline in `LUNAR_MISSIONS.MD`
4. Done!

---

## Why This System Works

✅ **Clear organization** - Everything has its place  
✅ **Easy to update** - Change one thing without breaking others  
✅ **Consistent quality** - Everyone follows the same standards  
✅ **Scalable** - Can grow to hundreds of rovers/landers/missions  
✅ **AI-friendly** - Assistants can help efficiently  
✅ **Human-readable** - You don't need to be technical to understand

---

## Getting Started

### If You're New to the Project:

1. **Read the README.MD** to understand what LORS is about
2. **Browse the summary files** (`LUNAR_ROVERS.MD`, `LUNAR_LANDERS.MD`, etc.)
3. **Open a few detailed files** to see what kind of information we collect
4. **Ask an AI assistant** to help you find or add information

### If You Want to Contribute:

1. **Identify what you want to add** (a new rover, updated specs, etc.)
2. **Tell an AI assistant** what you need
3. **The AI will use our skills** to research and document it
4. **Review the results** and suggest improvements

---

## Questions?

**"Do I need to know how to code?"**  
No! The AI handles the technical parts. You just need to know what information you want.

**"What if I make a mistake?"**  
That's okay! We use version control (Git), so we can always go back to previous versions.

**"How do I know what information to include?"**  
Check the relevant skill in the `skills/` folder - it lists exactly what to look for.

**"Can I edit files directly?"**  
Yes! But it's often easier to ask an AI assistant to do it, especially for maintaining the proper format.

---

## Summary

We organize our work using:
- **Separate files** for each thing (rovers, landers, missions)
- **Skills** that teach how to research specific topics
- **AI assistants** that follow our skills to help us work faster

This keeps everything organized, consistent, and easy to grow over time.

---

**Ready to contribute? Start by browsing the summary files or ask an AI assistant for help!**
