DOCS=index about publications

DIR=..

HDOCS=$(addsuffix .html, $(DOCS))
PHDOCS=$(addprefix $(DIR)/, $(HDOCS))

.PHONY: docs 
docs: $(PHDOCS)

$(DIR)/%.html: %.jemdoc MENU jemdoc.conf $(DIR)/css $(DIR)/img $(DIR)/files
	./jemdoc -o $@ -c jemdoc.conf $<

$(DIR)/css: css
	rm -rf $(DIR)/css
	cp -r css $(DIR)/css

$(DIR)/img: img
	rm -rf $(DIR)/img
	cp -r img $(DIR)/img

$(DIR)/files: files
	rm -rf $(DIR)/files
	cp -r files $(DIR)/files

.PHONY: clean
clean:
	rm -rf $(DIR)/*.html $(DIR)/css $(DIR)/img
