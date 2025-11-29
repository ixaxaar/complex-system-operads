# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a LaTeX research paper repository focused on "Modeling Complex Systems Using Operads" - specifically developing σ-operads (statistical operads) to model phase transitions and emergent phenomena in complex systems. The project extends traditional operad theory with statistical structures to represent compositional structure, scale invariance, and near-decomposability.

## Build Commands

### Core Build Process
```bash
# Build PDF (standard 3-pass LaTeX compilation with bibliography)
make

# Clean build output and temporary files
make clean

# Deep clean - removes all generated files including subdirectories
make distclean
```

### Development Workflow
```bash
# Continuous preview with auto-rebuild on changes (requires latexmk)
make preview

# Alternative watch mode using native make and entr
make watch

# Update all TikZ figures and build complete document
make full
```

### Figure Management
```bash
# Compile all TikZ figure sources in figures/ directory
make figures
```

## Document Structure

### Main Architecture
- **main.tex**: Primary document with title, abstract, and section includes
- **src/**: Modular LaTeX source files for each major section
- **bibliography/**: BibTeX references (references.bib)
- **figures/**: TikZ source files and compiled diagrams

### Section Organization
The paper follows a standard academic structure with dedicated files:
- `src/introduction.tex` - Problem statement and motivation
- `src/background.tex` - Literature review and foundations  
- `src/prerequisites.tex` - Mathematical background on operads
- `src/methodology.tex` - Core contribution: Network-Enriched Wiring Diagram Operads
- `src/results.tex` - Experimental validation and examples
- `src/discussion.tex` - Analysis and implications
- `src/conclusion.tex` - Summary and future work

### Key Mathematical Concepts
The research develops Network-Enriched Wiring Diagram Operads (𝒮𝒲𝒟) by:
1. Extending standard wiring diagram operads (𝒲) with network structures
2. Adding compatibility conditions for node mapping and edge consistency  
3. Defining algebras over enriched operads using Markov kernels
4. Modeling causality without explicit time dependence

## Figure and Diagram System

### TikZ Integration
- Figure sources are standalone .tex files in `figures/`
- Compilation converts TikZ to PDF then PNG at 300 DPI
- Includes complex mathematical diagrams for opetope structures, wiring diagrams, and network compositions

### Code Styling
- Lean theorem prover code blocks with custom syntax highlighting
- Mathematical notation heavily uses amsmath, amssymb packages
- Forest package for linguistic-style tree diagrams

## Document Formatting

### LaTeX Package Dependencies
Essential packages: hyperref, natbib, tikz, forest, listings, geometry
Color scheme uses deep blue headers, accent color highlights, and soft link colors

### Build Requirements
- pdflatex with full TeX distribution
- bibtex for bibliography processing  
- Optional: latexmk for continuous preview
- Optional: entr for file watching in alternative preview mode