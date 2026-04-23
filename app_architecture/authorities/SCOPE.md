# SDL Term Scope Authority

Purpose: define what `sdl-term` owns, what it does not own, and how it fits the
Howl family.

## Product Identity

`sdl-term` is a Linux host shell that composes shared Howl modules into a
running terminal application.

## In Scope

- SDL window lifecycle and event loop ownership
- SDL input capture and mapping to host actions
- GL context creation and swap/present integration
- Composition of `howl-session` + `howl-render-gl` in a deterministic host loop
- Host packaging/release ownership for this app

## Out of Scope

- Terminal semantic ownership (`howl-terminal` authority)
- Shared session runtime ownership (`howl-session` authority)
- Shared OpenGL renderer ownership (`howl-render-gl` authority)
- Cross-host policy ownership
