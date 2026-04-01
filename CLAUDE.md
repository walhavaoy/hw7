# Hello World App

## Overview

A standalone Hello World web application using Node.js/Express with a clean minimal UI, containerized via Docker and served on port 3000.

## Tech Stack

- **Runtime**: Node.js 20.x
- **Language**: TypeScript ~5.4
- **Framework**: Express ~4.21
- **Container**: Docker multi-stage build (node:20-alpine)

## Directory Structure

```
/
  src/              TypeScript source
    index.ts        Express server entry point
  public/           Static assets served by Express
    index.html      Hello World page (HTML/CSS)
  dist/             Compiled JavaScript output (gitignored)
  docs/
    target/         Project specifications and requirements
    implemented/    Implementation coverage tracking
  Dockerfile        Multi-stage container build
  package.json      Project config and scripts
  tsconfig.json     TypeScript compiler config
```

## Build / Run / Test

```bash
npm install           # Install dependencies
npm run build         # Compile TypeScript (tsc)
npm start             # Run compiled app (node dist/index.js)
npm run dev           # Run with ts-node for development
```

## Code Conventions

- TypeScript strict mode enabled
- Use `pino` for structured logging (never console.log)
- Prefix unused function parameters with underscore (e.g., `_req`)
- No `any` types — define interfaces for all data shapes
- Handle errors explicitly — no silent catch blocks
- Vanilla HTML/CSS for frontend — no client-side frameworks or bundlers

## Key Design Decisions

- Express serves static files from `public/` — no server-side rendering
- No database or persistent storage
- No authentication — fully public
- No external service dependencies — runs fully standalone
- Port 3000 is the default listening port
