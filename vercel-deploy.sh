#!/bin/bash
# Vercel Deployment Script

echo "⚡ Deploying to Vercel..."

# Check if Vercel CLI is installed
if ! command -v vercel &> /dev/null; then
    echo "📦 Installing Vercel CLI..."
    npm install -g vercel
fi

# Login and deploy
echo "🔑 Login to Vercel (browser will open)..."
vercel login

echo "🚀 Deploying project..."
vercel --prod

echo "✅ Deployed to Vercel!"
echo "🌐 Your site will be live at a vercel.app URL"
echo "💡 You can also connect a custom domain in Vercel dashboard"