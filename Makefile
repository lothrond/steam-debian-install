SRC := steam-install.sh
DEST := /usr/bin

.PHONY: install
install: $(SRC)
	@echo "Installing ..."
	@install -Dt $(DEST) -m 755 $(SRC)
	@echo "Done."

.PHONY: remove
remove: $(DEST)/$(SRC)
	@echo "Removing ..."
	rm $(DEST)/$(SRC)
	@echo "Done."
