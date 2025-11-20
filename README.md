# Project Overview

This repository **uses the global secrets configuration** provided by the `universal_secrets` Python module. All secret values are loaded from the following locations (in order of priority):

1. Environment variables
2. `~/.config/secrets/global.env`
3. `~/.secrets/global.env`
4. Project‑level `.env`
5. Project‑level `.env.local`

The helper script `scripts/load_secrets.sh` sources the appropriate global environment files so that any build or deployment process can access the required secrets without hard‑coding them.

## How to use

```bash
# Load secrets before running any commands
source scripts/load_secrets.sh

# Example: run a Python script that uses universal_secrets
python3 -c "from universal_secrets import get_secret; print(get_secret('FIRECRAWL_API_KEY')[:10])"
```

## Adding new secrets

Add new key‑value pairs to one of the global files mentioned above. The `universal_secrets` module will automatically pick them up.

---

*This project is configured to rely on the global secret base.*
