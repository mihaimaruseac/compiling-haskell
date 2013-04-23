BASENAME = haskell-compiling
PDF = $(addsuffix .pdf, $(BASENAME))
TEX = $(addsuffix .tex, $(BASENAME))
PDFLATEX = pdflatex
OUT_DIR = texfiles

CODEINPUTS = cs.hs ptm.hs factorial.hs factorial-main.hs\
	     factorial-main.dump-parsed.hs\
	     factorial-main.dump-renamer.hs\
	     factorial-main.dump-typechecker.hs\
	     factorial-main.dump-ds1.hs factorial-main.dump-ds2.hs\
	     factorial-main.dump-simpl1.hs factorial-main.dump-simpl2.hs\
	     factorial-main.dump-prep1.hs factorial-main.dump-prep2.hs factorial-main.dump-prep3.hs\
	     factorial-main.dump-stg1.hs factorial-main.dump-stg2.hs\
	     factorial-main.dump-cmm1.hs factorial-main.dump-cmm2.hs\
	     factorial-main.dump-opt-cmm.hs\
	     factorial-main.dump-asm.hs
CODEDIR = code
CODEINPUTSTEX = $(addprefix $(CODEDIR)/, $(addsuffix .tex, $(CODEINPUTS)))
HIGHLIGHTSTY = highlight.sty
HIGHLIGHT_OPTS = --out-format=latex -l -f -t 4 -c $(HIGHLIGHTSTY)

.PHONY: clean all

all: $(PDF)

$(PDF): $(TEX) $(CODEINPUTSTEX)
	@# Construct $(OUT_DIR) if it doesn't exist
	@test -d $(OUT_DIR) || mkdir $(OUT_DIR)
	@# Twice, so TOC is also updated
	@TEXINPUTS=$(STY_DIR)//: $(PDFLATEX) -output-directory $(OUT_DIR) $<
	@TEXINPUTS=$(STY_DIR)//: $(PDFLATEX) -output-directory $(OUT_DIR) $<
	@ln -sf $(OUT_DIR)/$@ .

clean:
	@$(RM) -r $(OUT_DIR)
	@$(RM) $(PDF) $(CODEINPUTSTEX) $(CODEDIR)/$(HIGHLIGHTSTY)

%.hs.tex: %.hs
	@highlight -S hs $(HIGHLIGHT_OPTS) -i $< -o $@
