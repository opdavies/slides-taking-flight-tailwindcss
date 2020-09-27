CLEAN_PATHS=_static node_modules theme
REVEAL_ARGS=slides.md --css=theme/slides.css --disable-auto-open

.PHONY: install-shared-assets install-node-dependencies generate-static-slides generate-theme-css generate-static-slides serve

default: serve

clean:
	for dir in $(CLEAN_PATHS); do \
		rm -fr $$dir; \
	done

install-shared-assets:
	git submodule init
	git submodule update

install-node-dependencies: package.json package-lock.json
	npm ci

generate-theme-css: install-node-dependencies
	npm run development

generate-static-slides: install-node-dependencies install-shared-assets
	npm run production
	rm -fr _static
	npx reveal-md $(REVEAL_ARGS) --static --asset-dirs=assets

serve: install-shared-assets
	npm run serve
