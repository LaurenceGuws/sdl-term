# SDL Term Scope Authority

Purpose: define what this host repo owns and what it does not own.

## Product Identity

`howl-sdl-host` is a Linux host shell that composes shared Howl modules into a
running terminal application.

## In Scope

- SDL window lifecycle and event loop ownership
- SDL input capture and mapping to host actions
- GL context creation and swap/present integration
- Composition of shared session + renderer modules in a deterministic host loop
- Host packaging/release ownership for this app

## Out of Scope

- Terminal semantic ownership
- Shared session runtime ownership
- Shared renderer ownership
- Cross-host policy ownership
