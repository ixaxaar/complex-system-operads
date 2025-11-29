# Modeling Complex Systems Using Operads

This project contains the source code (LaTeX) for a research paper titled "Modeling Complex Systems Using Operads".

## Project Overview

*   **Topic:** Modeling phase transitions and emergent phenomena in complex systems using a novel algebraic structure called $\sigma$-operads (statistical operads).
*   **Author:** Russi Chatterjee
*   **Format:** LaTeX Document

## Directory Structure

*   `main.tex`: The primary LaTeX file that orchestrates the document structure.
*   `src/`: Contains the content for each section of the paper (Introduction, Background, Methodology, etc.).
*   `bibliography/`: Contains the `references.bib` BibTeX file.
*   `figures/`: Contains TikZ source files for diagrams and other image assets.
*   `Makefile`: Build automation script.

## Building the Project

The project uses `make` for building the PDF and managing figures.

*   **Build PDF:**
    ```bash
    make
    ```
    This runs `pdflatex`, `bibtex`, and `pdflatex` (twice) to resolve references.

*   **Continuous Preview:**
    ```bash
    make preview
    ```
    Uses `latexmk` to watch for changes and rebuild automatically.

*   **Generate Figures:**
    ```bash
    make figures
    ```
    Compiles the TikZ files in `figures/` into PNGs.

*   **Clean:**
    ```bash
    make clean
    ```
    Removes temporary build files.

## Dependencies

*   **LaTeX Distribution:** TeX Live or similar (needs `pdflatex`, `bibtex`).
*   **Tools:** `latexmk` (for preview), `pdftoppm` (for figure generation).
*   **LaTeX Packages:** `tikz`, `forest`, `listings`, `natbib`, etc. (see `main.tex` for full list).
