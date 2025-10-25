import { defineConfig } from 'astro/config';

// https://astro.build/config
export default defineConfig({
  site: 'https://anix-lynch.github.io',
  // Remove base for Vercel, keep for GitHub Pages
  // base: '/astro-portfolio',
  output: 'static',
  build: {
    assets: 'assets'
  }
});