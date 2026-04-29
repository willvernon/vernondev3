# Minimal FastAPI + HTMX Portfolio

A minimal, professional portfolio scaffold using FastAPI, Jinja2, and HTMX with three tabs: About, Projects, Contact.

## Quickstart (fish)

```fish
# from repo root
python -m venv .venv
source .venv/bin/activate.fish
pip install -U pip
pip install -r requirements.txt

# run dev server
uvicorn app.main:app --reload
```

Then open `http://127.0.0.1:8000`.

## Quickstart (conda)

```bash
# create env (Python 3.11 recommended)
conda create -n portfolio-fastapi python=3.11 -y
conda activate portfolio-fastapi

# install deps via pip
pip install -U pip
pip install -r requirements.txt

# run dev server
uvicorn app.main:app --reload
```

## Structure

```
app/
  main.py              # FastAPI app + HTMX-aware routes
  templates/
    base.html          # layout with navbar and content slot
    partials/
      about.html
      projects.html
      contact.html
  static/
    css/
      styles.css
```

## Notes

- HTMX loads tabs via `hx-get` from `/tabs/{about|projects|contact}` and swaps into `#content`.
- Direct navigation to `/` returns the full page with the default `about` content.
- Customize content in `app/templates/partials/*.html` and styles in `app/static/css/styles.css`.
