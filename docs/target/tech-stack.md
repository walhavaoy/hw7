# Tech Stack

## Runtime

| Component | Technology | Version |
|-----------|-----------|---------|
| Runtime | Node.js | 20.x (LTS) |
| Language | TypeScript | ~5.4 |
| Framework | Express | ~4.21 |

## Dependencies

### Production

| Package | Version | Purpose |
|---------|---------|---------|
| express | ^4.21.0 | HTTP server and static file serving |

### Development

| Package | Version | Purpose |
|---------|---------|---------|
| typescript | ^5.4.0 | TypeScript compiler |
| @types/express | ^4.17.0 | Type definitions for Express |
| @types/node | ^20.0.0 | Type definitions for Node.js |

## Build Toolchain

- **TypeScript Compiler** (`tsc`) — compiles `src/` to `dist/`
- **npm scripts** — build, start, dev commands
- **Docker** — multi-stage build for production image

## Container

| Property | Value |
|----------|-------|
| Base Image | node:20-alpine |
| Exposed Port | 3000 |
| Build Strategy | Multi-stage (compile + runtime) |
