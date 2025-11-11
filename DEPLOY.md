# Deployment Guide

## Deploy to Vercel

### For anixlynch.com (Main Portfolio)

1. **Push to GitHub:**
   ```bash
   cd /Users/anixlynch/dev/northstar/05_marketing-etl/portfolio
   git init
   git add .
   git commit -m "Initial commit: Thiago-inspired portfolio"
   git remote add origin https://github.com/anixlynch/anixlynch.com
   git push -u origin main
   ```

2. **Deploy on Vercel:**
   - Go to https://vercel.com
   - Click "Add New Project"
   - Import your GitHub repo
   - Set **Root Directory** to `portfolio`
   - Add custom domain: `anixlynch.com`
   - Deploy!

### For gozeroshot.dev (Projects Page)

**Option 1: Same repo, different deployment**
1. Create another Vercel project
2. Import the same repo
3. Set Root Directory to `portfolio`
4. Add custom domain: `gozeroshot.dev`
5. Update `index.html` link to point to `https://gozeroshot.dev` instead of `projects.html`

**Option 2: Use subdomain redirect**
1. Deploy main site to `anixlynch.com`
2. Set up `projects.anixlynch.com` subdomain pointing to `projects.html`
3. Update the link in main page

## Custom Domain Setup

### On Vercel:
1. Project Settings → Domains
2. Add `anixlynch.com` and `www.anixlynch.com`
3. Add `gozeroshot.dev` (if separate project)

### On Your Domain Registrar:
Add these DNS records:

**For anixlynch.com:**
```
Type: A
Name: @
Value: 76.76.19.19

Type: CNAME
Name: www
Value: cname.vercel-dns.com
```

**For gozeroshot.dev:**
```
Type: A
Name: @
Value: 76.76.19.19

Type: CNAME
Name: www
Value: cname.vercel-dns.com
```

## File Structure
```
portfolio/
├── index.html          # Main landing page (anixlynch.com)
├── projects.html       # Projects showcase (gozeroshot.dev or /projects)
├── css/
│   ├── main.css       # Main styles (Thiago-inspired)
│   └── projects.css   # Projects page styles
├── vercel.json        # Vercel config
└── DEPLOY.md          # This file
```

## Quick Deploy Command
```bash
cd /Users/anixlynch/dev/northstar/05_marketing-etl/portfolio
vercel --prod
```

## Notes
- SSL certificates are automatic with Vercel
- Both domains can point to the same deployment
- Use Vercel's edge network for fast global delivery
- Update DNS TTL to 3600 for faster propagation

