# Component Taxonomy and Priority Matrix

## Component Tree

```
hello-world-app/
  +-- src/                    [Phase 2] Express server
  |     +-- index.ts          Entry point, Express setup
  +-- public/                 [Phase 2] Static assets
  |     +-- index.html        Hello World page
  +-- Dockerfile              [Phase 3] Container build
  +-- package.json            [Phase 1] Project config
  +-- tsconfig.json           [Phase 1] TypeScript config
```

## Priority Matrix

| Component | Phase | Priority | Status |
|-----------|-------|----------|--------|
| package.json | 1 - Setup | must | pending |
| tsconfig.json | 1 - Setup | must | pending |
| src/index.ts | 2 - App | must | pending |
| public/index.html | 2 - App | must | pending |
| Dockerfile | 3 - Container | must | pending |

## Phases

### Phase 1 — Project Setup
- Initialize npm project with TypeScript config
- Install Express and type definitions
- Set up tsconfig.json and build scripts
- **Milestone**: Project compiles with empty Express app

### Phase 2 — Hello World App
- Create Express server listening on port 3000
- Create static HTML page with Hello World message and minimal CSS
- Serve the static page from Express
- **Milestone**: Running locally, page loads and displays Hello World

### Phase 3 — Containerization
- Create multi-stage Dockerfile (build TypeScript, run with Node)
- Expose port 3000 in Dockerfile
- Test container build and run
- **Milestone**: Docker container runs and serves Hello World on port 3000
