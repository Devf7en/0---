--
# Copilot instructions for this repository

Repository snapshot (discovered):
- Owner: Devf7en
- Repo: 0---
- Default branch: main
- Current notable file: `.github/dependabot.yml` (only repository file found)

What to expect here
- This repository currently contains only a Dependabot configuration that updates the `devcontainers` ecosystem weekly. There is no source code, README, CI, or test files present to infer a build system or framework.

Agent workflow and constraints
- If a task requires changing or adding code, first check for an existing README, CI, or source files. If none are present (as is the case now), open a concise proposal comment instead of making large, speculative edits.
- Prefer tiny, reversible changes (single-file edits) and open a pull request on `main` with a short description and rationale. Keep PRs focused and document assumptions.

Files to inspect or update (examples)
- `.github/dependabot.yml` — current content:
  - package-ecosystem: "devcontainers"
  - directory: "/"
  - schedule: weekly

Actionable patterns for common agent tasks
- Add a minimal README: if the user asks to scaffold the project, create `README.md` with a short project description and a TODO list (language, build, tests, CI). Don’t assume language or framework—ask if unsure.
- Add CI or tests only when the language/build is known. Instead, add a small `docs/SETUP.md` describing what the agent needs from the maintainer (preferred language, build commands, test commands, linters, and expected outputs).
- Update Dependabot: when updating `.github/dependabot.yml`, preserve the existing structure (version: 2, `updates:` list). Example change: adding another `package-ecosystem` entry must be added as a new item beneath `updates:`.

How to propose changes (PR template for the agent)
- Title: "chore: <short description> — automated edit"
- Body: 1–2 sentence summary, explicit assumptions (e.g., "no language detected, adding README to prompt maintainers"), files changed, and test/verification steps if applicable.

When you are blocked or uncertain
- If the repository lacks a README, src files, or CI, add a short `docs/REQUEST_INFO.md` (one-liner list) and request clarification from the maintainer before making large changes.
- Ask explicitly for the project's primary language, build/test commands, and preferred CI provider.

Reference points
- Check and edit `.github/dependabot.yml` when changes to dependency update cadence or ecosystems are required.

Feedback and iteration
- After making initial small edits (README, docs), ask the maintainer which components they'd like scaffolded (app type, language, test framework). Iterate only after confirmation.

--