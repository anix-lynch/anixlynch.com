#!/bin/bash
# Docker Build & Push Script

echo "🐳 Building and pushing to Docker Hub..."

echo "⚠️  Make sure Docker Desktop is running first!"
echo "   → Open Docker Desktop app"
echo "   → Wait for it to start"
echo ""

echo "🔑 Log into Docker Hub manually:"
echo "   docker login --username YOUR_USERNAME"
echo ""

# Build the image
echo "🏗️  Building Docker image..."
docker build -t anix-lynch/astro-portfolio:latest .

# Tag for Docker Hub
docker tag anix-lynch/astro-portfolio:latest anix-lynch/astro-portfolio:latest

# Push to Docker Hub
echo "🚀 Pushing to Docker Hub..."
docker push anix-lynch/astro-portfolio:latest

echo "✅ Docker image pushed successfully!"
echo "📦 Available at: https://hub.docker.com/r/anix-lynch/astro-portfolio"
echo ""
echo "🎯 To run locally:"
echo "   docker run -p 8080:80 anix-lynch/astro-portfolio:latest"
echo "   Then visit: http://localhost:8080"