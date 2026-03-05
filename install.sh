#!/bin/bash

# Tapestry Skills for Claude Code - Installation Script
# This script installs the skills to your personal Claude skills directory

set -e

SKILLS_DIR="$HOME/.claude/skills"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "🎯 Tapestry Skills for Claude Code - Installer"
echo "=============================================="
echo ""

# Create skills directory if it doesn't exist
if [ ! -d "$SKILLS_DIR" ]; then
    echo "📁 Creating Claude skills directory at $SKILLS_DIR"
    mkdir -p "$SKILLS_DIR"
else
    echo "✓ Claude skills directory exists"
fi

echo ""
echo "📦 Installing skills..."
echo ""

# Install tapestry master skill
if [ -d "$SKILLS_DIR/tapestry" ]; then
    echo "⚠️  tapestry skill already exists"
    read -p "   Overwrite? (y/n) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        rm -rf "$SKILLS_DIR/tapestry"
        cp -r "$SCRIPT_DIR/tapestry" "$SKILLS_DIR/"
        echo "   ✓ Updated tapestry skill"
    else
        echo "   ⏭️  Skipped tapestry skill"
    fi
else
    cp -r "$SCRIPT_DIR/tapestry" "$SKILLS_DIR/"
    echo "✓ Installed tapestry skill"
fi

# Install youtube-transcript skill
if [ -d "$SKILLS_DIR/youtube-transcript" ]; then
    echo "⚠️  youtube-transcript skill already exists"
    read -p "   Overwrite? (y/n) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        rm -rf "$SKILLS_DIR/youtube-transcript"
        cp -r "$SCRIPT_DIR/youtube-transcript" "$SKILLS_DIR/"
        echo "   ✓ Updated youtube-transcript skill"
    else
        echo "   ⏭️  Skipped youtube-transcript skill"
    fi
else
    cp -r "$SCRIPT_DIR/youtube-transcript" "$SKILLS_DIR/"
    echo "✓ Installed youtube-transcript skill"
fi

# Install article-extractor skill
if [ -d "$SKILLS_DIR/article-extractor" ]; then
    echo "⚠️  article-extractor skill already exists"
    read -p "   Overwrite? (y/n) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        rm -rf "$SKILLS_DIR/article-extractor"
        cp -r "$SCRIPT_DIR/article-extractor" "$SKILLS_DIR/"
        echo "   ✓ Updated article-extractor skill"
    else
        echo "   ⏭️  Skipped article-extractor skill"
    fi
else
    cp -r "$SCRIPT_DIR/article-extractor" "$SKILLS_DIR/"
    echo "✓ Installed article-extractor skill"
fi

# Install ship-learn-next skill
if [ -d "$SKILLS_DIR/ship-learn-next" ]; then
    echo "⚠️  ship-learn-next skill already exists"
    read -p "   Overwrite? (y/n) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        rm -rf "$SKILLS_DIR/ship-learn-next"
        cp -r "$SCRIPT_DIR/ship-learn-next" "$SKILLS_DIR/"
        echo "   ✓ Updated ship-learn-next skill"
    else
        echo "   ⏭️  Skipped ship-learn-next skill"
    fi
else
    cp -r "$SCRIPT_DIR/ship-learn-next" "$SKILLS_DIR/"
    echo "✓ Installed ship-learn-next skill"
fi

# Install scrum-sage skill
if [ -d "$SKILLS_DIR/scrum-sage" ]; then
    echo "⚠️  scrum-sage skill already exists"
    read -p "   Overwrite? (y/n) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        rm -rf "$SKILLS_DIR/scrum-sage"
        cp -r "$SCRIPT_DIR/scrum-sage" "$SKILLS_DIR/"
        echo "   ✓ Updated scrum-sage skill"
    else
        echo "   ⏭️  Skipped scrum-sage skill"
    fi
else
    cp -r "$SCRIPT_DIR/scrum-sage" "$SKILLS_DIR/"
    echo "✓ Installed scrum-sage skill"
fi

echo ""
echo "=============================================="
echo "✅ Installation complete!"
echo ""
echo "Skills installed to: $SKILLS_DIR"
echo ""
echo "📚 Available skills:"
echo "  - tapestry: 🌟 Unified workflow (extract + plan)"
echo "  - youtube-transcript: Download YouTube transcripts"
echo "  - article-extractor: Extract clean article content"
echo "  - ship-learn-next: Turn content into action plans"
echo "  - scrum-sage: AI Scrum Master & agile coaching"
echo ""
echo "🚀 Usage:"
echo "  Open Claude Code and start using the skills!"
echo "  Quick start: 'tapestry [URL]'"
echo "  Example: 'tapestry https://www.youtube.com/watch?v=VIDEO_ID'"
echo ""
echo "📖 See README.md for more information"
echo ""
