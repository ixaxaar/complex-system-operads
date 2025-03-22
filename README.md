# Complex Systems Modeling Research Paper

This repository contains the LaTeX source for a research paper on complex systems modeling. The template includes enhanced styling with a professional academic appearance.

## Structure

- `main.tex`: Main LaTeX document with enhanced styling and formatting
- `src/`: Contains individual sections of the paper with template content
- `figures/`: Place your images and diagrams here
- `bibliography/`: Contains references in BibTeX format with relevant citations

## Features

- **Professional styling** with custom colors, fancy headers, and enhanced typography
- **Structured sections** with proper formatting and LaTeX best practices
- **Citation framework** with comprehensive bibliography of complex systems literature
- **Table and figure templates** for presenting research findings
- **Mathematical equation support** for formal model descriptions

## Building the Paper

To compile the paper into a PDF, you can use:

```bash
make
```

This will run pdflatex and bibtex as needed to generate the final PDF.

### Continuous Preview Mode

For a continuous preview that automatically rebuilds the PDF when you make changes:

```bash
make preview
```

This uses `latexmk` to watch for file changes and rebuilds the PDF automatically. Your PDF viewer (if it supports it) will refresh with the changes.

If you don't have `latexmk` installed, you can use the alternative watch mode:

```bash
make watch
```

This requires the `entr` utility to be installed.

### Cleaning Up

To clean up auxiliary files:

```bash
make clean
```

For a more thorough cleanup including files in subdirectories:

```bash
make distclean
```

## Required Software

- A LaTeX distribution (e.g., TeX Live, MiKTeX)
- make (for using the Makefile)
- Required LaTeX packages (automatically installed by most LaTeX distributions):
  - titlesec, xcolor, fancyhdr, titling, abstract, microtype, lettrine, enumitem

## Customizing

1. Replace placeholder text (marked with `[brackets]`) with your actual research content
2. Add your figures to the `figures/` directory and uncomment the figure inclusion code
3. Expand the bibliography with additional references relevant to your research
4. Modify the styling in the preamble of `main.tex` if you want to change colors or formatting

## Getting Started

1. Edit the abstract in `main.tex` with a summary of your research
2. Fill in the section files in the `src/` directory with your content
3. Add citations using `\citep{}` or `\citet{}` commands
4. Run `make` to generate the PDF