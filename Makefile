
help:
	@echo "This project accepts the following targets:"
	@echo ""
	@echo "    make test           # run local server"
	@echo "    make build          # build static pages"
	@echo "    make install        # deploy static pages to github"
	@echo ""


test:
	mkdocs serve 

build:
	mkdocs build

install:
	mkdocs gh-deploy
