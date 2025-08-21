# custom_commands/CONTENTS.md

This file summarizes the contents of each script in the `custom_commands/` directory.

---

## algebra.tex

- **Imports:** Custom algebra commands.
- **Dependencies:** None explicit.

## arithmetics.tex

- **Imports:** Defines `\integerint` using `\llbracket` and `\rrbracket`.
- **Dependencies:** Requires `stmaryrd` package for double brackets.

## math_utility.tex

- **Imports:** Utility math commands.
- **Dependencies:** None explicit.

## quantum.tex

- **Imports:** Quantum mechanics commands (`\ket`, `\bra`, `\bracket`).
- **Dependencies:** Uses `\langle` and `\rangle` (standard LaTeX math mode).

## referencing-aliases.tex

- **Imports:** Reference and citation aliases.
- **Dependencies:** None explicit.

## todo_notes.tex

- **Imports:** `todonotes` package (conditionally, via `\iftodoonotes`).
- **Dependencies:** Requires `xargs` (imported in `imports/custom_commands.tex`).
