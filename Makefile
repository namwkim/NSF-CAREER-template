# template by Philip Guo
# http://pgbovine.net/NSF-CAREER-proposal.htm
#
# (i've tested this on macOS with MacTeX)
#
# for your initial run, use 'make bib' to do a full build
#
# it will create two separate files:
# CAREER-project-description.pdf and CAREER-references.pdf
#
# then for subsequent runs:
# - run 'make' to compile just project description (quick!)
# - run 'make bib' to compile project description and references (slow)
all:
	pdflatex CAREER-project-description.tex

# WOW! complicated!
bib:
	pdflatex CAREER-project-description.tex
	bibtex CAREER-project-description
	pdflatex CAREER-project-description.tex
	pdflatex CAREER-project-description.tex
	pdflatex CAREER-references.tex
