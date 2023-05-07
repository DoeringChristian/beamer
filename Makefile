DOCKERIMG=presentation
DOCKERCMD=docker run -v "$(PWD)":/usr/src/project -w /usr/src/project $(DOCKERIMG)
#LATEXC=tectonic
LATEXC=latexmk --pdf

TEXFILE=presentation.tex

docker:
	docker build -t $(DOCKERIMG) .

pdf:
	$(DOCKERCMD) $(LATEXC) $(TEXFILE)

clear:
	$(DOCKERCMD) $(LATEXC) -C
