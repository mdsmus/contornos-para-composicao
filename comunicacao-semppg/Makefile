NAME = apresentacao-goiaba
TEXSRCS = figs/contornos.eps figs/expansao.eps

OTHER += $(LILY_EPS) $(OTHER_EPS4)

-include ~/repositorios/genos-repos/lib/make/latex.mk

medium-clean: light-clean
	rm -f $(NAME).{ps,pdf,dvi}

light-clean:
	rm -f $(NAME).{aux,lo*,bl*,to*,bb*}

figs/contornos.eps: figs/contornos.pdf
	convert $< $@

figs/expansao.eps: figs/expansao.pdf
	convert $< $@
