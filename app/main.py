from fastapi import FastAPI, Request
from fastapi.responses import HTMLResponse
from fastapi.staticfiles import StaticFiles
from fastapi.templating import Jinja2Templates
from starlette.exceptions import HTTPException as StarletteHTTPException

app = FastAPI(title="Vernon Portfolio")

# Serve static assets
app.mount("/static", StaticFiles(directory="app/static"), name="static")

# Templates (Jinja2)
templates = Jinja2Templates(directory="app/templates")


def render_page(request: Request, active_tab: str, partial: bool) -> HTMLResponse:
    context = {"request": request, "active_tab": active_tab}
    if partial:
        return templates.TemplateResponse(f"partials/{active_tab}.html", context)
    return templates.TemplateResponse("base.html", context)


@app.get("/", response_class=HTMLResponse)
async def index(request: Request) -> HTMLResponse:
    return render_page(request, "about", partial=False)


@app.get("/tabs/{tab}", response_class=HTMLResponse)
async def tab(request: Request, tab: str) -> HTMLResponse:
    if tab not in {"about", "projects", "contact"}:
        raise StarletteHTTPException(status_code=404)
    is_htmx = request.headers.get("HX-Request", "false").lower() == "true"
    return render_page(request, tab, partial=is_htmx)
