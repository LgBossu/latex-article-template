# imports/CONTENTS.md

This file summarizes the contents of each script in the `imports/` directory.

---

## color-boxes.tex

- **Imports:** `xcolor` (with options `[pdftex,dvipsnames]`), possibly used by `tcolorbox`.
- **Dependencies:** None explicit, but used for color support in boxes.

## custom_commands.tex

- **Imports:** Custom commands only; no package imports.
- **Dependencies:** None explicit.

## encoding-fonts.tex

- **Imports:** Font and encoding packages (e.g., `fontenc`, `inputenc`, `lmodern`).
- **Dependencies:** None explicit.

## hyperref.tex

- **Imports:** `hyperref` package.
- **Dependencies:** Should be loaded after most other packages.

## math_base.tex

- **Imports:** Math packages (e.g., `amsmath`, `amssymb`).
- **Dependencies:** None explicit.

## math_fancy.tex

- **Imports:** Fancy math packages (e.g., `mathtools`, `physics`).
- **Dependencies:** May require `amsmath`.

## page_layout.tex

- **Imports:** Page layout packages (e.g., `geometry`, `fancyhdr`).
- **Dependencies:** None explicit.

## tikz.tex

- **Imports:** `tikz` package (loads `xcolor` implicitly).
- **Dependencies:** None explicit.
