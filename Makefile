all: install serve

.PHONY : help
help :
	@echo "install : Install ready and dependencies."
	@echo "serve   : Start a http server to serve the site."
	@echo "pdf     : Render book as pdf."
	@echo "html    : Render book as html."
	@echo "names   : Re-creates chunk names using ready::name_chunks()."
	@echo "clean   : Remove auto-generated files."
	@echo "bibtex  : Reformats the bibtex file."

install:
	Rscript -e 'if (length(find.package("devtools", quiet = TRUE)) == 0) install.packages("devtools")' \
	        -e 'devtools::install_dev_deps(upgrade = "always")' \
			-e 'devtools::update_packages(upgrade = "always")' \
	        -e 'devtools::document()' \
			-e 'devtools::install()'

serve:
	quarto.cmd preview site/

clean:
	$(RM) -r site/_site site/.quarto site/site_libs;\
	find . -name "*.ps" -type f -delete;
	find . -name "*.dvi" -type f -delete;
	find . -type d -name "*_files" -exec rm -rf {} \;
	find . -type d -name "*_cache" -exec rm -rf {} \;

html:
	quarto render site/ --to html
	open site/_site/index.html

pdf:
	quarto render site/ --to pdf

names:
	Rscript -e 'ready::name_chunks()'

bibtex:
	biber --tool --output-align --output-indent=2 --output-fieldcase=lower site/references.bib -O site/references.bib
	rm site/references.bib.blg
