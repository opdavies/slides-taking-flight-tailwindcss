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

install-node-dependencies: package.json
	npm install

generate-theme-css: install-node-dependencies
	npx encore dev

generate-static-slides: install-node-dependencies install-shared-assets
	NODE_ENV=production npx encore production --progress
	rm -fr _static
	npx reveal-md $(REVEAL_ARGS) --static --asset-dirs=assets

serve: install-shared-assets generate-theme-css
	npx reveal-md $(REVEAL_ARGS) --port=9000 --watch
