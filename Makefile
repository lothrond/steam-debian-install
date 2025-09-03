SRC := steam-install.sh
DEST := /usr/local/bin

.PHONY: install
install: $(SRC)
	@echo "Installing ..."
	@cp $(SRC) $(DEST)/steam-install
	@chmod 755 $(DEST)/steam-install
	@echo "Done."

.PHONY: remove
remove: $(DEST)/$(SRC)
	@echo "Removing ..."
	rm $(DEST)/steam-install
	@echo "Done."
