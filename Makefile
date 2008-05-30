NAME = sobre-contornos

LILYDIR=figs

LILY_EPS4=$(patsubst %.ly,%.eps,$(wildcard $(LILYDIR)/*.ly))
# LILY_PNG2= $(patsubst %.ly,%.png,$(wildcard $(LILYDIR)/*.ly))
# LILY_PS1 = $(patsubst %.ly,%.ps,$(wildcard $(LILYDIR)/*.ly))
# LILY_PDF1= $(patsubst %.ly,%.pdf,$(wildcard $(LILYDIR)/*.ly))
# LILY_SVG1= $(patsubst %.ly,%.svg,$(wildcard $(LILYDIR)/*.ly))

OTHER += $(LILY_EPS4)

-include ~/lib/make/latex.mk
-include ~/repositorios/genos-repos/lib/make/latex.mk

%.eps: %.ly
	cd ${LILYDIR} ;\
	lilypond -b eps -p $(notdir $<) ;\
	cd -
