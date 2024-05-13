get-pkg:
	@echo "Update project dependencies"
	@git submodule init
	@git submodule update --remote
	@echo "Moving package: ${PKG} to root"
	@cp -af ./vendor/paws/cran/${PKG}/. ./
	@echo "^.github" >> .Rbuildignore
	@echo "^Makefile" >> .Rbuildignore
	@echo "^vendor" >> .Rbuildignore