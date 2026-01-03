# The LORS AI Workflow Guide

**For:** Everyone! (From web users to pro developers)

We call our project "AI-Native." This just means we organized our folders and files so that AI assistants (like ChatGPT, Claude, Cursor, or Antigravity) can easily understand them.

This guide explains how you can use our **"Skills"** to make contributing effortless.

---

## 🧠 What is a "Skill"?

Think of a **Skill** as a **Recipe Card** for your AI assistant.

If you just ask an AI to "write about the Viper rover," it might write a poem, or a blog post, or a messy paragraph.

But if you give it our **Rover Skill**, you are handing it a recipe that says:
*   "Look for the mass in kg."
*   "Find the specific power source."
*   "Format the top of the file like *this*."
*   "Don't guess—if you don't know, say TBD."

## 📚 The Recipe Book (Skill Directory)

All our recipes are in the `skills/` folder. Here is when to use them:

| When you want to... | Use this Skill... |
| :--- | :--- |
| **Add a new Rover** | `skills/lunar-rovers/SKILL.MD` |
| **Add a Lander** | `skills/lunar-landers/SKILL.MD` |
| **Update a Mission** | `skills/lunar-missions/SKILL.MD` |
| **Analyze Data** | `skills/report-ecosystem-mapping/SKILL.MD` |

## 🛠️ How to use a Skill

### Method A: Copy & Paste (For ChatGPT / Claude Web)
*Perfect for [Option 2 in the Contributing Guide](CONTRIBUTING.MD#option-2-power-up-with-ai-chatbots).*

1. Open the Skill file on GitHub (e.g., `skills/lunar-rovers/SKILL.MD`).
2. Copy the text.
3. Paste it into your AI chat.
4. Add your request: *"Use these instructions to write a file for the Astrolab FLEX rover."*
5. Copy the result into a new file on GitHub.

### Method B: Integrated AI Editors (For Pro Users)
*Perfect for [Option 3 in the Contributing Guide](CONTRIBUTING.MD#option-3-local-development-environment-the-pro-way).*

If you use an AI-powered editor, you don't need to copy/paste. The AI can read the files directly.

#### 1. Cursor
*   **Action:** Type `@` in the chat (Cmd+L) or inline edit (Cmd+K).
*   **Example:** *"@skills/lunar-rovers/SKILL.MD Research the generic specification for a CubeRover."*

#### 2. VSCode (with Cline or Copilot)
*   **Action:** Open the skill file in a tab so the AI can "see" it, or reference it in the chat interface.
*   **Example:** *"Using the open skill file, generate a new rover file for 'Hemiunu'."*

#### 3. Antigravity (Google)
*   **Action:** The agent has access to the file system.
*   **Example:** *"Read the rover skill file and then find info on the VIPER rover."*

## ✨ Why do it this way?

1. **Laziness is good!** You don't have to remember if we use "kg" or "pounds." The Skill tells the AI to use "kg."
2. **Consistency.** Every file looks the same, which makes the whole project easier to read.
3. **Better Data.** Our Skills remind the AI to look for specific details (like "Comms Bandwidth") that you might forget to ask for.

## Try it out!

Don't be afraid to experiment.
1. Pick a rover you like.
2. Grab the Rover Skill.
3. Feed it to an AI and see what it builds.

If it looks good, submit it! If not, just ask the AI to fix it. *You are the pilot, the AI is just the co-pilot.*
