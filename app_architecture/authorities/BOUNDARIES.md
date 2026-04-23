# SDL Term Boundary Authority

## Hard Boundaries

- SDL layer owns only:
  - window lifecycle
  - input/event pump
  - GL context + swap integration
- Renderer logic must not depend on SDL types.
- Session logic must not be implemented in this repo.

## Composition Rule

Main loop composition is:
1. SDL events -> host input mapper
2. mapper actions -> session API
3. session frame model -> renderer API
4. renderer output -> SDL swap/present

## Forbidden Coupling

- No terminal semantic shortcuts in host code.
- No renderer internals embedded in SDL event layer.
- No PTY/process/session policy embedded in SDL glue code.
