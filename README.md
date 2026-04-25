# howl-sdl-host

Linux host application.

Scope:
- SDL windowing and input
- host event loop composition
- rendering integration (kept decoupled from SDL event/window code)

Non-goals:
- terminal semantic ownership
- cross-host shared runtime ownership
