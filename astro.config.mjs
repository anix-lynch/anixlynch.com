import { defineConfig } from 'astro/config';

// https://astro.build/config
export default defineConfig({
  site: 'https://anix-lynch.github.io',
  base: '/astro-portfolio',
  output: 'static',
  build: {
    assets: 'assets'
  },
  adapter: undefined // Ensure static build
});