# API Contracts

## Endpoints

### `GET /`

Serves the Hello World HTML page.

- **Method**: GET
- **Path**: `/`
- **Response Content-Type**: `text/html`
- **Response Status**: `200 OK`
- **Response Body**: Static HTML page with Hello World message

### Static Assets

All files under `public/` are served by Express static middleware.

- **Method**: GET
- **Path**: `/<filename>`
- **Response**: Corresponding static file

## No API Endpoints

This application has no JSON API endpoints, no authentication, and no dynamic routes. It serves only static content.
