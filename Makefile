DOCS=index about publications

HDOCS=$(addsuffix .html, $(DOCS))
PHDOCS=$(addprefix docs/, $(HDOCS))

.PHONY : docs
docs : $(PHDOCS)

docs/%.html: %.jemdoc MENU jemdoc.conf docs/css docs/img
	./jemdoc -o $@ -c jemdoc.conf $<

docs/css: css
	rm -rf docs/css
	cp -r css docs/css

docs/img: img
	rm -rf docs/img
	cp -r img docs/img

.PHONY : clean
clean :
	rm -rf docs/*
