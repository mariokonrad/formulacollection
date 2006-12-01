#
# Makefile: formula collection
# $Id: Makefile,v 1.12 2003/10/24 15:42:53 ninja Exp $
#

LATEX=latex
DVIPS=dvips
DVIPDF=dvipdf

.PHONY: all
all: \
	trigonometrie \
	lineare \
	analysis \
	diskrete \
	physik \
	elektrotechnik \
	collection

.PHONY: collection
collection: \
	formulaCollection.ps \
	formulaCollection.pdf
formulaCollection.ps: formulaCollection.dvi
	$(DVIPS) $^ -o $@
formulaCollection.pdf: formulaCollection.dvi
	$(DVIPDF) $^
formulaCollection.dvi: \
	formulaCollection.tex \
	mathematik_trigonometrie.tex \
	mathematik_linearealgebra.tex \
	mathematik_analysis.tex \
	mathematik_diskretemathematik.tex \
	physik_mechanik.tex \
	physik_hydromechanik.tex \
	physik_waermelehre.tex \
	physik_wellenlehre.tex \
	physik_elektro.tex \
	physik_magnetismus.tex \
	physik_relativitaet.tex \
	elektro.tex \
	common.tex \
	headings.tex

.PHONY: trigonometrie
trigonometrie: \
	MathematikTrigonometrie.ps \
	MathematikTrigonometrie.pdf
MathematikTrigonometrie.ps: MathematikTrigonometrie.dvi
	$(DVIPS) $^ -o $@
MathematikTrigonometrie.pdf: MathematikTrigonometrie.dvi
	$(DVIPDF) $^
MathematikTrigonometrie.dvi: \
	mathematik_trigonometrie.tex \
	common.tex \
	headings.tex \
	MathematikTrigonometrie.tex

.PHONY: lineare
lineare: \
	MathematikLineareAlgebra.ps \
	MathematikLineareAlgebra.pdf
MathematikLineareAlgebra.ps: MathematikLineareAlgebra.dvi
	$(DVIPS) $^ -o $@
MathematikLineareAlgebra.pdf: MathematikLineareAlgebra.dvi
	$(DVIPDF) $^
MathematikLineareAlgebra.dvi: \
	mathematik_linearealgebra.tex \
	common.tex \
	headings.tex \
	MathematikLineareAlgebra.tex

.PHONY: analysis
analysis: \
	MathematikAnalysis.ps \
	MathematikAnalysis.pdf
MathematikAnalysis.ps: MathematikAnalysis.dvi
	$(DVIPS) $^ -o $@
MathematikAnalysis.pdf: MathematikAnalysis.dvi
	$(DVIPDF) $^
MathematikAnalysis.dvi: \
	mathematik_analysis.tex \
	common.tex \
	headings.tex \
	MathematikAnalysis.tex

.PHONY: diskrete
diskrete: \
	MathematikDiskreteMathematik.ps \
	MathematikDiskreteMathematik.pdf
MathematikDiskreteMathematik.ps: MathematikDiskreteMathematik.dvi
	$(DVIPS) $^ -o $@
MathematikDiskreteMathematik.pdf: MathematikDiskreteMathematik.dvi
	$(DVIPDF) $^
MathematikDiskreteMathematik.dvi: \
	mathematik_diskretemathematik.tex \
	common.tex \
	headings.tex \
	MathematikDiskreteMathematik.tex

.PHONY: physik
physik: \
	Physik.ps \
	Physik.pdf
Physik.ps: Physik.dvi
	$(DVIPS) $^ -o $@
Physik.pdf: Physik.dvi
	$(DVIPDF) $^
Physik.dvi: \
	physik_mechanik.tex \
	physik_hydromechanik.tex \
	physik_waermelehre.tex \
	physik_wellenlehre.tex \
	physik_elektro.tex \
	physik_magnetismus.tex \
	physik_relativitaet.tex \
	common.tex \
	headings.tex \
	Physik.tex

.PHONY: elektrotechnik
elektrotechnik: \
	Elektrotechnik.ps \
	Elektrotechnik.pdf
Elektrotechnik.ps: Elektrotechnik.dvi
	$(DVIPS) $^ -o $@
Elektrotechnik.pdf: Elektrotechnik.dvi
	$(DVIPDF) $^
Elektrotechnik.dvi: \
	elektro.tex \
	common.tex \
	headings.tex \
	Elektrotechnik.tex


clean:
	find . -name "*.dvi" -maxdepth 1 -exec rm {} \;
	find . -name "*.ps" -maxdepth 1 -exec rm {} \;
	find . -name "*.pdf" -maxdepth 1 -exec rm {} \;
	find . -name "*.eps" -maxdepth 1 -exec rm {} \;
	find . -name "*.log" -maxdepth 1 -exec rm {} \;
	find . -name "*.toc" -maxdepth 1 -exec rm {} \;
	find . -name "*.lof" -maxdepth 1 -exec rm {} \;
	find . -name "*.lot" -maxdepth 1 -exec rm {} \;
	find . -name "*.aux" -maxdepth 1 -exec rm {} \;
	find . -name "*.bmt" -maxdepth 1 -exec rm {} \;
	find . -name "*.mtc*" -maxdepth 1 -exec rm {} \;
	find . -name "*~" -maxdepth 1 -exec rm {} \;

.dvi.ps:
	$(DVIPS) $< -o $@

.dvi.pdf:
	$(DVIPDF) $<

.tex.dvi:
	$(LATEX) $<
	$(LATEX) $<

#
# EOF
#
