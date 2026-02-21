# Copilot / AI Agent Instructions — Robot Training repo

Purpose: Give an AI coding agent the minimal, concrete context to be immediately productive editing and running tests in this Robot Framework workspace.

- Project type: Robot Framework tests (mixed use of `Browser` and `SeleniumLibrary`). Key test suites live under `test/` and reusable keywords are under `resources/` (see [resources/keywords.robot](resources/keywords.robot)).
- How tests run: the repo uses the `robot` CLI. Example single-suite run (Windows):

```powershell
robot test\loginjobth.robot
robot test       # run all suites under test/
```

- Artifacts and traces:
  - Test outputs are generated in repo root: `output.xml`, `log.html`, `report.html`.
  - Playwright/Browser traces are stored under `browser/traces/temp/<id>/` — keep these when debugging failing Browser tests.

- Library usage patterns (important):
  - `Library    Browser` indicates Playwright-style tests using keywords like `New Browser` / `New Page` / `Wait For Elements State` (see [resources/keywords.robot](resources/keywords.robot)).
  - `Library    SeleniumLibrary` indicates Selenium-based tests using `Open Browser` / `Input Text` / `Click Element` (see [test/loginjobth.robot](test/loginjobth.robot)).
  - Do not mix Browser keywords into Selenium tests unless you update the `*** Settings ***` to include the appropriate library.

- Reusable patterns to follow when editing or extending tests:
  - Place shared keywords and variables in `resources/keywords.robot` and reference via `Resource    ../resources/keywords.robot` in suites (see [test/login.robot](test/login.robot)).
  - Use `[Template]` for table-driven tests (example in [test/login.robot](test/login.robot)).
  - Variable naming is uppercase with `${...}` (e.g., `${URL}`, `${USERNAME}`, `${PASSWORD}`) — reuse existing variables where possible.

- Concrete examples an agent may modify:
  - To add a new keyword: edit `resources/keywords.robot` and include Browser or Selenium keywords consistent with the library used.
  - To change browser mode: update `New Browser    chromium    headless=False` to `headless=True` or change engine (chromium/firefox/webkit).
  - To run a targeted test during debugging: `robot -i <tag> test\<file>.robot` or run an individual file as above.

- Safety / secrets: the repo contains hard-coded credentials in test files and variables (e.g., `test/loginandlogout.robot`). Treat these as sensitive — do not add or leak credentials in PRs or public suggestions.

- What to check before proposing changes:
  - Ensure you picked the right library (`Browser` vs `SeleniumLibrary`) for any new keywords.
  - Verify outputs by running the modified suite locally and inspect `log.html`/`report.html` for failures.
  - Preserve existing variable names and resource references to avoid breaking suites that import them.

If anything in this summary looks incorrect or you want more detail about a specific test or keyword, tell me which file(s) to inspect and I will expand the instructions.
