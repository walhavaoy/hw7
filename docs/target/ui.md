# UI Specification

## Page Inventory

| Page | Route | Description |
|------|-------|-------------|
| Hello World | `/` | Single page displaying the Hello World message |

## Component Hierarchy

```
index.html
  +-- <body>
        +-- Container (centered wrapper)
              +-- Heading: "Hello World"
```

## Design Requirements

- Clean, minimal design
- Centered content
- Readable typography
- No JavaScript required on the client
- Responsive — works on mobile and desktop
- Vanilla HTML and CSS only (no frameworks)

## Interaction Flows

This is a fully static page with no user interactions beyond loading the page.

1. User navigates to `/`
2. Page loads and displays "Hello World"
