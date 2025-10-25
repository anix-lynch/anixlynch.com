# 🚀 Astro Portfolio

Clean, modern portfolio converted from HTML to Astro framework.

## 🛠️ Quick Setup

```bash
# Install dependencies
npm install

# Start dev server  
npm run dev

# Build for production
npm run build

# Preview production build
npm run preview
```

## 📁 Project Structure

```
/
├── public/          # Static assets
├── src/
│   ├── components/  # Reusable Astro components
│   │   ├── Layout.astro
│   │   ├── Sidebar.astro
│   │   └── ProjectCard.astro
│   ├── data/       # Portfolio data
│   ├── pages/      # File-based routing
│   │   └── index.astro
│   └── styles/     # Global CSS
└── package.json
```

## ✨ Features

- 🎨 Clean, responsive design
- 🧩 Modular component architecture
- 📱 Mobile-first responsive layout
- ⚡ Fast loading with Astro
- 🔧 Easy to customize

## 🎛️ Customization

Edit `src/pages/index.astro` to update:
- Personal info (name, tagline, skills)
- Social links
- Project data

## 🌐 Deployment

Ready for deployment to:
- Netlify: `npm run build` 
- Vercel: `npm run build`
- GitHub Pages: Update `astro.config.mjs` with your repo details

## 📝 Next Steps

1. Replace placeholder project images with real screenshots/GIFs
2. Update social links and contact info
3. Add your actual project URLs
4. Customize colors in `src/styles/global.css`
5. Add more pages (blog, contact, etc.)

Built with ❤️ using Astro