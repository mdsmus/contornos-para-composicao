maindir=$(shell pwd)

file = sobre-contornos
out = out
figs = figs
figs-out = figs-out
data = data

figures = $(shell dir $(figs)/*.*)
graphs = $(shell dir $(data)/*.*)
all-figs = $(addsuffix .eps,$(notdir $(basename $(figures))))
all-graphs = $(addsuffix .eps,$(notdir $(basename $(graphs))))

vpath %.eps $(out)
vpath %.ly $(figs)
vpath %.eps $(figs-out)
vpath %.dia $(figs)
vpath %.plot $(data)
vpath %.data $(data)
vpath %.svg $(figs)
vpath %.pdf $(figs)
vpath %.sty config

dvi: $(all-figs) $(all-graphs) $(file).dvi $(file).tex
ps:  $(all-figs) $(all-graphs) $(file).ps $(file).tex
pdf:  $(all-figs) $(all-graphs) $(file).pdf $(file).tex

purge: cleanall
	rm -f $(file).{ps,pdf}

cleanall: clean cleanbib
	rm -f $(file).{dvi,log}

cleanbib:
	rm -f $(file).{aux,bbl,blg,gl*,ist}

clean:
	rm -rf $(figs-out)
	rm -rf out
	rm -rf $(svg-figs)

cleanlight:
	rm -rf $(figs-out)/tmp

%.dvi: %.tex
	latex $<
	bibtex $(basename $<)
	makeindex -s $(basename $<).ist -t $(basename $<).glg -o $(basename $<).gls $(basename $<).glo
	latex $<
	latex $<

%.ps: %.dvi
	dvips -o $@ $<

%.pdf: %.ps
	ps2pdf -sPAPERSIZE=a4 $<

%.eps: %.svg
	mkdir -p $(figs-out) ;\
	inkscape -E $(figs-out)/$@ $<

%.eps: %.dia
	mkdir -p $(figs-out) ;\
	dia --nosplash  -t eps --export=$(figs-out)/$@ $<

%.eps: %.ly
	mkdir -p $(figs-out)/tmp ;\
	cp $< $(figs-out)/tmp ;\
	cd $(figs-out)/tmp ;\
	lilypond -b eps --preview $(notdir $<) ;\
	mv $(notdir $(basename $<)).preview.eps ../$(notdir $(basename $<)).eps ;\

%.eps: %.plot %.data
	mkdir -p $(figs-out) ;\
	gnuplot $<
	mv $(notdir $@) $(figs-out)
