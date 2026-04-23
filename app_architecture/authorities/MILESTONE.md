# SDL Term Milestone Authority

This document defines high-level milestones from scaffold to long-term target.
It is intentionally non-implementation-detailed.

## Milestone Ladder

| ID | Name | Outcome |
| --- | --- | --- |
| `M0` | Repo Scaffold | Package compiles, tests run, authority/docs baseline exists. |
| `M1` | SDL Shell Foundation | Stable SDL window loop, input pump, GL context, and present boundary. |
| `M2` | Session Composition | `howl-session` is integrated with deterministic host tick boundaries. |
| `M3` | Renderer Composition | `howl-render-gl` is integrated with clear frame input/output boundaries. |
| `M4` | Input Mapping Closure | Keyboard/mouse/paste mapping into session actions is explicit and stable. |
| `M5` | Resize/Viewport Discipline | Resize, DPI, and viewport flow are deterministic and regression-tested. |
| `M6` | Linux Platform Closure | Wayland/X11 behavior and Linux runtime integration are production-safe. |
| `M7` | Performance Discipline | Host-loop latency, frame pacing, and CPU/memory bounds are measured and enforced. |
| `M8` | UX Reliability | Daily-driver reliability and interaction quality are validated under stress. |
| `M9` | Packaging and Ops | Distribution, crash/report diagnostics, and upgrade workflow are stable. |
| `M10` | Best-in-Class Linux Host | Linux host quality is top-tier on correctness, latency, smoothness, and operations. |

## Current Target

Current milestone target is `M0` Repo Scaffold authority closure.
