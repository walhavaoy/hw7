# Requirements

## Functional Requirements

| ID | Priority | Description |
|----|----------|-------------|
| REQ-01-01 | must | Single page displays a Hello World message |

## Non-Functional Requirements

| ID | Priority | Description |
|----|----------|-------------|
| REQ-02-01 | must | Clean, minimal UI design |
| REQ-02-02 | must | Node.js + Express backend serving the page |
| REQ-02-03 | must | Application listens on port 3000 |
| REQ-02-04 | must | Dockerfile provided for containerized deployment |
| REQ-02-05 | must | No authentication required — fully public page |
| REQ-02-06 | must | Runs fully standalone with no external platform integrations |
| REQ-02-07 | must | Written in TypeScript |

## Assumptions

- Vanilla HTML/CSS/JS for the frontend — no build tooling or bundler needed for client assets
- TypeScript is used for the Express backend only; the frontend is plain HTML/CSS/JS
- No database or persistent storage is required
- No HTTPS/TLS termination — assumed to be handled externally if needed
- The Docker image will use a standard Node.js base image (e.g., node:20-alpine)

## Risks

- Scope creep — trivial project but requirements could expand if stakeholders add features later
- No health check endpoint specified, which may be needed if deployed behind a load balancer or orchestrator
