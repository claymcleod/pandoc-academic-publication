html-default:
	pandoc --filter pandoc-citeproc --biblio paper.bib -t html5 -c assets/fonts/cm/cm.css -c assets/css/academic-pub.css --template assets/templates/academic-html5.template --highlight-style pygments --toc --standalone -o paper.html paper.md

html-ieee:
	pandoc --filter pandoc-citeproc --biblio paper.bib -t html5 -c assets/fonts/cm/cm.css -c assets/css/academic-pub.css -c assets/css/ieee.css --template assets/templates/academic-html5.template --highlight-style pygments --toc --standalone --csl=assets/csl/ieee.csl -o paper.html paper.md

pdf-ieee:
	pandoc --filter pandoc-citeproc --biblio paper.bib -o paper.pdf -t latex --highlight-style pygments --standalone --variable documentclass=assets/latex/ieee --csl=assets/csl/ieee.csl -o paper.pdf paper.md

pdf-article:
	pandoc --filter pandoc-citeproc --biblio paper.bib -t latex --highlight-style pygments --standalone --variable documentclass=article --variable biblio-style=acm -o paper.pdf paper.md

pdf-memoir:
	pandoc --filter pandoc-citeproc --biblio paper.bib -t latex --highlight-style pygments --standalone --variable documentclass=memoir --variable biblio-style=acm -o paper.pdf paper.md


.PHONY:
clean:
	rm -f paper.html
	rm -f paper.pdf
