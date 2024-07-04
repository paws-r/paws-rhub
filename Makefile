get-pkg:
	@echo "Update project dependencies"
	@git submodule init
	@git submodule update --remote
	@echo "Moving package: ${PKG} to root"
	@if [ ${PKG} = "paws.common" ]; then\
        cp -af ./vendor/paws/paws.common/. ./; else \
		cp -af ./vendor/paws/cran/${PKG}/. ./; fi
	@echo "^.github" >> .Rbuildignore
	@echo "^Makefile" >> .Rbuildignore
	@echo "^vendor" >> .Rbuildignore