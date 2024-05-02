PKG = paws.compute


clear-down:
	@echo "Clear down"
	@rm -rf R man tests

get-pkg: clear-down
	@echo "Update project dependencies"
	@git submodule init
	@git submodule update --remote
	@echo "Moving package: ${PKG} to root"
	@cp -rf vendor/paws/cran/${PKG}/ . 
	@echo "^Makefile" >> .Rbuildignore
	@echo "^vendor" >> .Rbuildignore