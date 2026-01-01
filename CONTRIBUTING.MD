# Contributing to LORS

Thank you for your interest in contributing to the Lunar Open-source Rover Standard (LORS)! This guide will help you get set up with the tools and workflow we use.

---

## Before You Start

📚 **New to the project?** Start by reading [How We Work](AI_WORKFLOW.MD) to understand our workflow and how we organize information.

> [!IMPORTANT]
> **DO NOT COMMIT PURE AI-GENERATED TEXT!**
> It is easy to generate meaningless pages of text with AI that are hard to read. Please ensure your contributions are valuable, concise, and reviewed by a human.

---

## Ways to Contribute

- **Feedback on Research**: Review draft reports and provide input
- **Stakeholder Introductions**: Connect with lunar rover teams or delivery providers
- **Technical Expertise**: Share knowledge on rover standards or lunar operations
- **Community Outreach**: Help spread awareness of LORS
- **Documentation**: Add or update information about rovers, landers, missions, or entities

Join [MoonDAO Discord](https://discord.com/invite/moondao) to connect with the community!

---

## Technical Setup

### Step 1: Work in an AI-Native Way

Ensure all documentation is accessible to AI tools. This means:
- Keep data structured (we use YAML frontmatter in markdown files)
- Use scripts to download information when possible
- Follow our [workflow guidelines](AI_WORKFLOW.MD)

AI assistants help us build faster and maintain consistency!

### Step 2: Install Git

Install `git` on your computer. Git is the standard tool we use to track changes and collaborate on files.

**Installation:**
- **Windows**: Download from [git-scm.com](https://git-scm.com/)
- **Mac**: Install via Homebrew: `brew install git` or download from [git-scm.com](https://git-scm.com/)
- **Linux**: Use your package manager: `sudo apt install git` (Ubuntu/Debian) or `sudo dnf install git` (Fedora)

### Step 3: Setup Secure Access (SSH)

Configure git to securely connect to remote repositories (GitHub) using an SSH key. This acts like a secure digital key for your computer.

**Generate SSH Key:**
```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```

**Add to GitHub:**
1. Copy your public key: `cat ~/.ssh/id_ed25519.pub`
2. Go to GitHub → Settings → SSH and GPG keys → New SSH key
3. Paste your key and save

**More details**: [GitHub SSH Documentation](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)

### Step 4: Use AI-Assisted Editors (Optional but Recommended)

We recommend using modern text editors that support AI features to speed up your work.

**Recommended Editors:**
- **[Cursor](https://cursor.sh/)** - AI-first code editor
- **[VSCode](https://code.visualstudio.com/)** with plugins:
  - [Cline](https://marketplace.visualstudio.com/items?itemName=saoudrizwan.claude-dev)
  - [GitHub Copilot](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot)
- **Antigravity** - Google's AI coding assistant

### Step 5: Visualize Changes (Optional)

Use tools to help you "see" the history of changes and how different versions relate to each other.

**Recommended:**
- [Git Graph Extension for VSCode](https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph)
- [GitKraken](https://www.gitkraken.com/) - Visual Git client
- Command line: `git log --graph --oneline --all`

---

## Contribution Workflow

### 1. Create Your Copy (Fork)

"Fork" this repository on GitHub. This creates your own personal copy of the project where you can freely make changes without affecting the main project immediately.

**How to fork:**
1. Go to the [LORS repository](https://github.com/Official-MoonDao/LORS)
2. Click the "Fork" button in the top-right corner
3. GitHub will create a copy under your account

### 2. Download to Your Computer (Clone)

"Clone" your forked copy to your local machine. This downloads the files so you can edit them directly on your computer.

```bash
git clone git@github.com:YOUR-USERNAME/LORS.git
cd LORS
```

### 3. Make Your Changes

Edit files following our [workflow guidelines](AI_WORKFLOW.MD):
- Add new rovers, landers, or missions to their respective directories
- Update summary files when adding new entities
- Follow the existing file structure and naming conventions
- Use AI assistants to help with research and formatting

### 4. Save and Upload Changes (Commit & Push)

"Commit" your edits (save a snapshot of your changes) and "Push" them (upload) back to your online copy (your fork).

```bash
# Check what files you changed
git status

# Add files to staging
git add .

# Commit with a descriptive message
git commit -m "Add Moonlight rover specifications"

# Push to your fork
git push origin main
```

**Commit Message Tips:**
- Be descriptive: "Add Helium rover from itsfutura" not "Update files"
- Reference what changed: "Update IM-2 launch date to March 2026"
- Keep it concise but informative

### 5. Propose Your Changes (Pull Request)

Create a "Pull Request" from your forked repository to the original one. This allows us to review your work and merge it into the official project.

**How to create a PR:**
1. Go to your fork on GitHub
2. Click "Contribute" → "Open pull request"
3. Write a clear description of what you changed and why
4. Submit the pull request
5. Wait for review and respond to any feedback

---

## Best Practices

### Quality Standards

✅ **Do:**
- Research from official sources (developer websites, NASA documentation)
- Include source links for all information
- Follow existing file structures and naming conventions
- Review your changes before submitting
- Ask questions if you're unsure

❌ **Don't:**
- Copy-paste large blocks of AI-generated text without review
- Make up specifications if you can't find them
- Mix multiple unrelated changes in one PR
- Delete existing information without understanding why it's there

### Working with AI Assistants

When using AI tools to help with contributions:
1. **Be specific** in your requests: "Research the Helium rover's power specifications"
2. **Review the output** - AI can make mistakes or hallucinate data
3. **Verify sources** - Check that links and references are real and accurate
4. **Edit for clarity** - Make sure the text is concise and valuable
5. **Follow our skills** - AI should use the instructions in `/skills/` directory

---

## Getting Help

- **Questions?** Ask in [MoonDAO Discord](https://discord.com/invite/moondao)
- **Found a bug?** Open an issue on GitHub
- **Need clarification?** Check [How We Work](AI_WORKFLOW.MD) or ask the community

---

## Code of Conduct

- Be respectful and professional
- Focus on constructive feedback
- Welcome newcomers and help them learn
- Assume good intentions
- Keep discussions focused on the project

---

**Thank you for contributing to LORS! Together we're building the foundation for open lunar exploration.** 🌙
