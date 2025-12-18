# Copilot instructions for this repository

Purpose
- Provide concise, actionable guidance so an AI coding agent can be productive immediately in this static-site repo.

Big picture
- This is a small static website served from the repository root: the site entry is [index.html](index.html). Content pages are organized as directory-per-page with an `index.html` inside each directory (for example, [about/index.html](about/index.html), [fills/index.html](fills/index.html), [runs/index.html](runs/index.html)).
- Styles are centralized in [assets/site.css](assets/site.css). There is no repository-level JavaScript or build tool configured.

Key editing patterns and conventions
- Page-per-directory: add new content by creating a new folder with an `index.html` file; use relative links between pages.
- Keep path and file names lowercase and use hyphens for multi-word names to match existing layout (e.g. about/index.html).
- Global styling: modify [assets/site.css](assets/site.css) when changing visuals; avoid sprinkling inline styles across pages.
- Minimal tooling: there is no task runner, bundler, or package manifest. Changes are generally committed directly.

Local preview and quick checks
- To preview locally, serve the repository root via a simple HTTP server, for example:

  python3 -m http.server 8000

- Then open `http://localhost:8000` in a browser. This ensures relative links and assets behave like GitHub Pages.

Integration & deployment notes
- Repository contents are static files suitable for GitHub Pages or any static host. There is no CI, build step, or secrets files in the repository to manage.

What to change and how to present patches
- When modifying content pages, keep edits focused and follow the existing HTML structure used by [index.html](index.html) and subpages.
- When adding a new page, include a local link from an existing index page so reviewers can verify navigation.

Examples found in this repo
- Root page: [index.html](index.html)
- About page: [about/index.html](about/index.html)
- CSS: [assets/site.css](assets/site.css)
- Pages: [fills/index.html](fills/index.html), [runs/index.html](runs/index.html)

If anything here is unclear or you want more detail (linting, CI, or a small build step), please ask and I will update this file.
