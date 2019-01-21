# Includes
#.PHONY: install

install:
	sudo cp -Rf src/Applications/Addautostarter.app /Applications/
	sudo chgrp -R staff /Applications/Addautostarter.app
