# How to Contribute to LORS

Welcome! We are building the world's most comprehensive open database of lunar hardware.

We have designed this project specifically to work well with **AI Assistants** and tools. Choose the workflow that fits you best:

1.  **[The Web Way](#option-1-quick-edits-web-browser)** (Fast, no install)
2.  **[The Chat Way](#option-2-power-up-with-ai-chatbots)** (Easy, utilize our AI Skills)
3.  **[The Fun Way](#option-3-local-development-environment-the-pro-way)** (Full control, for developers & power users)

---

## 🚀 Option 1: Quick Edits (Web Browser)
*Best for: Fixing typos, adding missing data, or making small updates.*

**No software installation required.**
1. **Find the file** in the `rovers/`, `landers/`, or `missions/` folder on GitHub.
2. **Click the Pencil Icon (✏️)** in the top right corner.
3. **Make your changes**.
4. **Scroll down and click "Propose changes"**.

---

## 🤖 Option 2: Power-Up with AI (Chatbots)
*Best for: Adding new rovers, researching missions, and creating perfect files instantly without coding tools.*

We have created a set of "Skills" (instructions) that teach AI exactly how to write for this project.

### How it works:
1. **Find the right Skill**: Look in the `skills/` folder (e.g., `skills/lunar-rovers/SKILL.MD`).
2. **Copy the text** of the skill.
3. **Paste into your AI** (ChatGPT, Claude, Gemini) along with your request:
   > "Use these instructions to research the Starship HLS landing system and output a new file."
4. **Copy the result** back into a new file on GitHub (using the "Add file" -> "Create new file" button).

👉 **Read the [AI Workflow Guide](AI_WORKFLOW.MD) for more on Skills.**

---

## 💻 Option 3: Local Development Environment (The Fun Way)
*Best for: Heavy contributors, complex edits, and using integrated AI coding agents.*

If you want the full experience, we recommend setting up a local environment.

### Step 1: Install Git
Git is the standard tool to track changes and collaborate.
*   **Windows**: Download from [git-scm.com](https://git-scm.com/)
*   **Mac**: Install via Homebrew: `brew install git` or download from [git-scm.com](https://git-scm.com/)
*   **Linux**: `sudo apt install git` (Ubuntu/Debian)

### Step 2: Setup Secure Access (SSH)
This acts like a secure digital key so you don't have to type your password every time.

**Generate SSH Key:**
```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```
**Add to GitHub:**
1. Copy your public key: `cat ~/.ssh/id_ed25519.pub`
2. Go to GitHub → Settings → SSH and GPG keys → New SSH key
3. Paste your key and save.
*More details: [GitHub SSH Documentation](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)*

### Step 3: Choose Your Weapon (AI-Assisted Editors)
We recommend modern editors that support AI features to speed up your work.

**Recommended Editors:**
*   **[Cursor](https://cursor.sh/)** - An AI-first code editor (Highly Recommended).
*   **[VSCode](https://code.visualstudio.com/)** - The industry standard. Enhance it with plugins:
    *   [Cline](https://marketplace.visualstudio.com/items?itemName=saoudrizwan.claude-dev)
    *   [GitHub Copilot](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot)
*   **Antigravity** - Google's internal AI coding assistant (for authorized users).

### Step 4: Clone & Work
1.  **Fork** the repository on GitHub.
2.  **Clone** to your machine:
    ```bash
    git clone git@github.com:YOUR-USERNAME/LORS.git
    cd LORS
    ```
3.  **Create a Branch**:
    ```bash
    git checkout -b add-my-cool-rover
    ```
4.  **Work with AI**: If you are using Cursor or Antigravity, you can use our Skills directly.
    *   *Cursor Example:* Type `@skills/lunar-rovers/SKILL.MD` in the chat to provide context to the agent.
5.  **Visualize Changes (Optional)**:
    *   Use [Git Graph](https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph) in VSCode to see your history.

### Step 5: Submit
```bash
git add .
git commit -m "Add details for Blue Ghost Mission 1"
git push origin add-my-cool-rover
```
Then go to GitHub and click **"Compare & Pull Request"**.

---

## 📌 Checklist for Contributors
*   [ ] **Check the "Frontmatter"**: The top of every file has data between `---` lines.
*   [ ] **Source Links**: Ensure the AI included links to where it found the info.
*   [ ] **One Thing per File**: Keep rovers, missions, and landers in separate files.

## ❓ Need Help?
*   **Join Discord:** [MoonDAO Discord](https://discord.com/invite/moondao)
*   **Open an Issue:** Ask questions here on GitHub.

Happy Contributing! 🌕
