# sdl-term

Linux host for `howl-terminal`.

Scope:
- SDL windowing and input
- host event loop composition
- rendering integration (kept decoupled from SDL event/window code)

Non-goals:
- terminal semantic ownership (belongs to `howl-terminal`)
- cross-host shared runtime ownership (belongs to shared modules)
