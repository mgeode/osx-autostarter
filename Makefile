# Includes
#.PHONY: install

install:
	sudo cp -Rf src/Applications/Autostart.app /Applications/
	sudo chgrp -R staff /Applications/Autostart.app
