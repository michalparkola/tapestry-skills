# Tapestry Skills for AI Agents

A collection of productivity skills for AI agents like [Claude Code](https://claude.com/claude-code) that help you work faster and learn better.

Are you a founder of a tech company? Check out [Tapestry](https://GrowWithTapestry.com) – the AI planning partner that helps everyone on your team make better decisions faster.

| Skill | What it does |
|-------|-------------|
| [Learn This](#0-learn-this-) | One command to extract content from any URL and turn it into an action plan. |
| [Ship-Learn-Next](#6-ship-learn-next-action-planner) | Transform learning content into a 5-rep action plan you can ship. |
| [YouTube Transcript](#1-youtube-transcript-downloader) | Download and clean YouTube video transcripts with deduplication. |
| [Article Extractor](#2-article-extractor) | Extract clean, readable text from web articles and blog posts. |
| [Scrum Sage](#3-scrum-sage) | AI Scrum Master and agile coach grounded in Sutherland, Ohno, and First Principles. |
| [Session Log](#4-session-log) | Summarize your session and append it to a weekly agent-log file. |
| [Unblock Action](#5-unblock-action) | Turn a vague stuck task into a concrete next action in under 2 minutes. |


## Skills Included

### 0. Learn This ⭐
The unified workflow that orchestrates everything. Just say `learn-this <URL>` and it:
1. Detects content type (YouTube, article, PDF)
2. Extracts clean content
3. Automatically creates a Ship-Learn-Next action plan

**One command. Complete workflow. From learning to shipping.**

### 1. YouTube Transcript Downloader
Download and clean YouTube video transcripts with automatic deduplication and readable formatting.

**Features:**
- Downloads transcripts using yt-dlp
- Removes duplicate lines (YouTube VTT format issue)
- Uses video title for filename
- Fallback to Whisper transcription if no subtitles available
- Automatic cleanup of temporary files

**Use cases:**
- Get transcripts from educational videos
- Extract content from tutorials
- Archive important talks/interviews

### 2. Article Extractor
Extract clean, readable content from web articles and blog posts, removing ads, navigation, and clutter.

**Features:**
- Uses Mozilla Readability or trafilatura for extraction
- Removes ads, navigation, and newsletter signups
- Saves as clean plain text
- Uses article title for filename
- Multiple extraction methods with automatic fallback

**Use cases:**
- Save articles for offline reading
- Extract tutorial content
- Archive important blog posts
- Get clean text without distractions

### 3. Scrum Sage
AI-powered Scrum Master and Enterprise Agility Coach based on Jeff Sutherland, Taiichi Ohno, and First Principles thinking.

**Features:**
- Sprint analysis (basic and expert modes)
- Backlog refinement and story sizing guidance
- Anti-pattern detection and impediment radar
- Flow efficiency and cognitive load analysis
- Scrum@Scale advice for growing organizations
- Retrospective synthesis and predictive modeling

**Use cases:**
- Get coaching on Scrum mechanics, ceremonies, and artifacts
- Analyze sprint health, velocity trends, and predictability
- Remove impediments and detect systemic bottlenecks
- Plan scaling strategy (with Scrum@Scale, not SAFe)
- Facilitate retrospectives and backlog refinement
- Optimize team dynamics and sustainable pace

### 4. Session Log
Summarize your Claude Code conversation and append it to a weekly agent-log file.

**Features:**
- Reverse chronological daily entries
- Automatic ISO week file naming (`YYYY-wWW agent-log.md`)
- CHUNK markers for reusable outputs (plans, summaries, frameworks)
- Appends without overwriting existing entries
- Multi-day session support with date attribution

**Use cases:**
- Log what you accomplished in a session
- Build a searchable weekly work journal
- Track decisions, outputs, and topics across sessions

### 5. Unblock Action
Get unstuck on vague or overwhelming tasks. Clarifies the intended output, scopes it to today, and identifies the concrete next physical action.

**Features:**
- Socratic but fast — 2-3 questions max
- Turns fuzzy goals into concrete deliverables
- Scopes multi-day projects to today's completable slice
- Outputs a clean action card with deliverable, scope, and next step

**Use cases:**
- "I need to work on marketing but can't start"
- "I'm stuck on pricing"
- "I have to do something about onboarding"
- Any vague task you keep avoiding

### 6. Ship-Learn-Next Action Planner
Transform passive learning content (transcripts, articles, tutorials) into actionable implementation plans using the Ship-Learn-Next framework.

**Features:**
- Converts advice into concrete, shippable iterations (reps)
- Creates 5-rep action plans with timelines
- Focuses on DOING over studying
- Includes reflection questions after each rep
- Saves plan to markdown file

**Use cases:**
- Turn YouTube tutorials into action plans
- Extract implementation steps from articles
- Create learning quests from course content
- Build by shipping, not just consuming

## Installation

### Quick Install for Claude Code

```bash
# Clone the repository
git clone https://github.com/michalparkola/tapestry-skills.git

# Run the installation script
cd tapestry-skills
chmod +x install.sh
./install.sh
```

### Manual Installation

#### Option 1: Personal Skills (Available in all projects)

```bash
# Create personal skills directory if it doesn't exist
mkdir -p ~/.claude/skills

# Copy skills
cp -r learn-this ~/.claude/skills/
cp -r youtube-transcript ~/.claude/skills/
cp -r article-extractor ~/.claude/skills/
cp -r ship-learn-next ~/.claude/skills/
cp -r scrum-sage ~/.claude/skills/
cp -r session-log ~/.claude/skills/
cp -r unblock-action ~/.claude/skills/
```

#### Option 2: Project Skills (Only in specific project)

```bash
# In your project directory
mkdir -p .claude/skills

# Copy skills
cp -r /path/to/tapestry-skills-for-claude-code/learn-this .claude/skills/
cp -r /path/to/tapestry-skills-for-claude-code/youtube-transcript .claude/skills/
cp -r /path/to/tapestry-skills-for-claude-code/article-extractor .claude/skills/
cp -r /path/to/tapestry-skills-for-claude-code/ship-learn-next .claude/skills/
cp -r /path/to/tapestry-skills-for-claude-code/scrum-sage .claude/skills/
cp -r /path/to/tapestry-skills-for-claude-code/session-log .claude/skills/
cp -r /path/to/tapestry-skills-for-claude-code/unblock-action .claude/skills/
```

## Usage

### Learn This (Recommended - Use This!)

The simplest way to use Tapestry skills. One command extracts content and creates your action plan:

```
"learn-this https://www.youtube.com/watch?v=VIDEO_ID"
"weave https://example.com/article"
"help me plan https://example.com/paper.pdf"
"make this actionable https://blog.com/post"
```

**All these phrases work**: learn-this, learn this, weave, help me plan, extract and plan, make this actionable

The skill will:
1. Detect content type (YouTube/article/PDF)
2. Extract clean content
3. Create a Ship-Learn-Next action plan automatically
4. Save both files
5. Ask: "When will you ship Rep 1?"

### YouTube Transcript Downloader

Once installed, Claude will automatically use this skill when you ask to download YouTube transcripts:

```
"Download the transcript for https://www.youtube.com/watch?v=VIDEO_ID"
```

The skill will:
1. Check if yt-dlp is installed (install if needed)
2. List available subtitles
3. Try manual subtitles first, then auto-generated
4. Convert to readable plain text with video title as filename
5. Remove duplicate lines
6. Clean up temporary files

### Article Extractor

Claude will use this skill when you ask to extract content from a URL:

```
"Extract the article from https://example.com/blog-post"
"Download this article without the ads"
```

The skill will:
1. Check for extraction tools (reader or trafilatura)
2. Download and extract clean article content
3. Remove ads, navigation, and clutter
4. Save as plain text with article title as filename
5. Show preview of extracted content

### Scrum Sage

Claude will activate this skill when you ask about Scrum, agile coaching, or team performance:

```
"Help me plan our next sprint"
"Analyze our team's velocity trend"
"We keep missing sprint goals — what's wrong?"
"How should we scale from 2 to 5 teams?"
```

The skill will:
1. Assess your situation with targeted clarifying questions
2. Provide analysis grounded in Scrum mechanics and First Principles
3. Detect anti-patterns and surface hidden impediments
4. Recommend concrete experiments (not mandates)
5. Offer sprint health dashboards, flow maps, or retrospective synthesis as needed

### Session Log

Claude will use this skill when you want to log your session:

```
"log this"
"session log"
"summarize this session"
```

The skill will:
1. Review the full conversation history
2. Identify topics, decisions, and reusable outputs
3. Append entries to `YYYY-wWW agent-log.md` in reverse chronological order
4. Confirm what was logged

### Unblock Action

Claude will activate this skill when you're stuck on a task:

```
"unblock: work on marketing"
"I'm stuck on the pricing page"
"unstick: figure out onboarding"
```

The skill will:
1. Ask one question to clarify the concrete output
2. Scope it to a day-sized deliverable
3. Identify the literal first physical action
4. Output a clean action card you can work from

### Ship-Learn-Next Action Planner

Claude will use this skill when you want to turn content into an action plan:

```
"Turn this transcript into an implementation plan"
"Make this actionable using the Ship-Learn-Next framework"
```

The skill will:
1. Read the content file
2. Extract actionable lessons
3. Help you define a specific quest
4. Design 5 progressive reps (iterations)
5. Save the complete plan as a markdown file

## Requirements

### YouTube Transcript Downloader
- **yt-dlp**: Automatically installed by the skill (uses Homebrew on macOS, apt on Linux, or pip)
- **Whisper** (optional): For transcribing videos without subtitles
  ```bash
  pip3 install openai-whisper
  ```

### Article Extractor
- **reader** (recommended): Mozilla's Readability
  ```bash
  npm install -g reader-cli
  ```
- **trafilatura** (alternative): Python-based extractor
  ```bash
  pip3 install trafilatura
  ```
- If neither is installed, uses fallback method (less accurate)

### Ship-Learn-Next Action Planner
- No additional requirements (uses built-in tools)

## Examples

### Example 0: Learn This Unified Workflow (Recommended)

```
User: "learn-this https://www.youtube.com/watch?v=dQw4w9WgXcQ"

Claude:
🧵 Learn This Workflow Starting...
📍 Detected: youtube
📺 Extracting YouTube transcript...
✓ Saved transcript: Never Gonna Give You Up.txt

🚀 Creating action plan...
✓ Quest: Master Video Production Techniques
✓ Saved plan: Ship-Learn-Next Plan - Master Video Production.md

✅ Learn This Complete!
📥 Content: Never Gonna Give You Up.txt
📋 Plan: Ship-Learn-Next Plan - Master Video Production.md

🎯 Rep 1 (This Week): Film and edit a 60-second video
When will you ship Rep 1?
```

### Example 1: Download and Process a YouTube Video

```
User: "Download transcript for https://www.youtube.com/watch?v=dQw4w9WgXcQ"

Claude:
✓ Checked available subtitles
✓ Downloaded auto-generated transcript
✓ Converted to readable format
✓ Removed duplicate lines
✓ Saved to: Never Gonna Give You Up.txt
✓ Cleaned up temporary files
```

### Example 2: Extract an Article

```
User: "Extract https://example.com/how-to-build-saas"

Claude:
✓ Using reader (Mozilla Readability)
✓ Extracted article: How to Build a SaaS in 30 Days
✓ Saved to: How to Build a SaaS in 30 Days.txt

Preview (first 10 lines):
[Clean article text without ads or navigation...]
```

### Example 3: Create an Action Plan

```
User: "Turn this transcript into an implementation plan"

Claude:
✓ Read transcript: Build a SaaS in 30 Days.txt
✓ Extracted core lessons
✓ Created 5-rep action plan
✓ Saved to: Ship-Learn-Next Plan - Build a SaaS.md

Your quest: Launch a SaaS MVP and get first 10 customers in 4 weeks

Rep 1 (this week): Find 3 proven market opportunities
When will you ship Rep 1?
```

## Philosophy

These skills are built on the principle that **learning = doing better, not knowing more**.

### Ship-Learn-Next Framework
- **Ship**: Create something real (code, content, product)
- **Learn**: Honest reflection on what happened
- **Next**: Plan the next iteration based on learnings

100 reps beats 100 hours of study.

## Contributing

Found a bug or want to add a feature? Contributions are welcome!

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-skill`)
3. Commit your changes (`git commit -m 'Add amazing skill'`)
4. Push to the branch (`git push origin feature/amazing-skill`)
5. Open a Pull Request

## License

MIT License - see [LICENSE](LICENSE) file for details

## Acknowledgments

- **Ship-Learn-Next framework**: Inspired by the ShipLearnNext GPT methodology
- **yt-dlp**: Excellent tool for downloading YouTube content
- **OpenAI Whisper**: State-of-the-art speech recognition
- **Mozilla Readability**: Clean article extraction algorithm
- **trafilatura**: Python web scraping and content extraction

## Support

Having issues? Please [open an issue](https://github.com/michalparkola/tapestry-skills/issues) on GitHub.

---

**Made with Claude Code**

Learn more about Claude Code at [claude.com/claude-code](https://claude.com/claude-code)
