all: pdf

pdf:
	pdflatex main
	bibtex main
	pdflatex main
	pdflatex main

# Continuous preview mode with auto-rebuild on file changes
preview:
	latexmk -pvc -pdf -interaction=nonstopmode -file-line-error main

# Alternative preview if latexmk is not available
watch:
	while true; do \
		make pdf; \
		echo "PDF rebuilt. Watching for changes..."; \
		sleep 2; \
		find . -name "*.tex" -o -name "*.bib" | entr -d echo "Changes detected, rebuilding..."; \
	done

clean:
	rm -f *.aux *.log *.bbl *.blg *.out *.toc *.fls *.fdb_latexmk *.synctex.gz *.dvi main.pdf

# Deep clean - removes all generated files including those in subdirectories
distclean: clean
	find . -name "*.aux" -o -name "*.log" -o -name "*.bbl" -o -name "*.blg" -o -name "*.out" -o -name "*.toc" -o -name "*.fls" -o -name "*.fdb_latexmk" -o -name "*.synctex.gz" | xargs rm -f

# Update all figures by compiling TikZ source files
figures:
	@echo "Updating figures..."
	mkdir -p figures
	cd figures && \
	for fig in *.tex; do \
		if [ -f "$$fig" ]; then \
			echo "Compiling $$fig"; \
			pdflatex "$$fig"; \
			pdftoppm "$${fig%.tex}.pdf" "$${fig%.tex}" -png -r 300; \
		fi \
	done
	@echo "All figures updated."

# Build PDF with updated figures
full: figures pdf

.PHONY: all pdf clean distclean preview watch figures full