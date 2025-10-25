#!/bin/bash
# GitHub Push Script

echo "🚀 Setting up GitHub remote and pushing..."

echo "📝 Please create a repository on GitHub called 'astro-portfolio'"
echo "   → Go to https://github.com/new"
echo "   → Name: astro-portfolio"
echo "   → Description: Clean, modern portfolio built with Astro"
echo "   → Public repository"
echo "   → DON'T initialize with README (we have one)"

echo ""
echo "After creating the repo, run these commands:"
echo ""
echo "# Add GitHub remote (replace YOUR_USERNAME)"
echo "git remote add origin https://github.com/YOUR_USERNAME/astro-portfolio.git"
echo ""
echo "# Push to GitHub"
echo "git branch -M main"
echo "git push -u origin main"

echo ""
echo "OR if you have GitHub CLI installed:"
echo "gh repo create astro-portfolio --public --source=. --remote=origin --push"