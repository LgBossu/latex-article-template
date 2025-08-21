# latex-article-template

A personally tailored template to handle modular latex projects cleanly and quickly. Let's cut the setup short and jump to writing !

## Project Structure and Logic

This template is designed for modular LaTeX projects, making it easy to organize, maintain, and scale your documents. The logic is:

- Modular Imports: All package imports and custom commands are split into small, coherent .tex scripts grouped by purpose and dependency.
- Main File: The main file ([`main.tex`](src/main.tex)) imports only the scripts you need, keeping your document clean and flexible.
- Custom Commands: Custom commands are grouped in custom_commands and imported as needed.
- Build and Output: All build and auxiliary files are routed to dedicated directories ([`.build/`](src/.build/), [`.output/`](src/.output/)) to keep your workspace tidy. The final PDF is moved to the project root for easy access.

### Directory structure

```text
latex-article-template/
├── .gitignore
├── LICENSE.txt
├── Makefile
├── README.md
├── main.pdf
├── .vscode/
│   └── settings.json
├── src/
│   ├── main.tex
│   ├── body.tex
│   ├── appendix.tex
│   ├── bibliography.tex
│   ├── refs.bib
│   ├── .build/        # Auxiliary build files
│   ├── .output/       # Output files (PDF, logs)
│   ├── imports/       # Modular package imports
│   │   ├── CONTENTS.md
│   │   └── ...
│   └── custom_commands/ # Modular custom commands
│       ├── CONTENTS.md
│       └── ...
```

- [`imports/`](src/imports/): Contains scripts for package imports, grouped by function (e.g., math, fonts, page layout).
- [`custom_commands/`](src/custom_commands/): Contains scripts for custom LaTeX commands, grouped by topic (e.g., quantum, algebra).
- `CONTENTS.md`: Each module folder has a summary file listing imports and dependencies for each script.

### Modular imports

In [`main.tex`](src/main.tex), you import only the scripts you need:

```latex
% Example modular imports
\import{imports/}{math_base.tex}
\import{custom_commands/}{quantum.tex}
```

This keeps your main file readable and lets you easily swap or add features.

## Compilation

### Manual Compilation

Use the provided [`Makefile`](Makefile) in the project root. It will:

- Compile [`main.tex`](src/main.tex) using `latexmk` (or your chosen compiler)
- Route build files to `.build` and output files to `.output`
- Move the final PDF to the project root

Run:

```bash
make
```

### VS Code integration

- The template is configured for LaTeX Workshop.
- On save, VS Code will run the [`Makefile`](src/Makefile) and update your PDF automatically.
- Linter and log warnings are filtered for a cleaner workflow.

## Best practices

- Group related packages and commands in separate scripts for clarity and reusability.
- Use the `CONTENTS.md` files to track dependencies and imports.
- Only import what you need in main.tex.
- Keep build/output files out of your main workspace for cleanliness.

## Troubleshooting

- **For better visibility on where compilation might *stall* or fail,** consider running `make` manually from root again.
- If you encounter issues, check the log files in the `.output` directory for detailed error messages.
- Ensure all required packages are installed and up to date.

## Attribution

This *template* is licenced under the Creative Commons Attribution-ShareAlike 4.0 International Public License, to be shared and adapted freely, as long as appropriate credit is given and any derived works are licensed under identical terms for distribution. See [LICENSE.txt](LICENSE.txt) for more details.

Here are suggestions to credit the template's author for public distribution:

```latex
\begin{center}
{\tiny Latex article template © Louis-Guillaume Bossu, CC BY-SA 4.0}
\end{center}
```

```markdown
This report was created using the 
[latex-article-template](https://github.com/LgBossu/latex-article-template#) 
LaTeX template by Louis-Guillaume Bossu, licensed under 
[CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).
```
