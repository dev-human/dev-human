.DEFAULT_GOAL := help

HUGO_RUN := docker compose run -T --rm hugo
NODE_RUN := docker compose run -T --rm node
SERVERLESS_RUN := docker compose run -T --rm serverless

.PHONY: help
help: # Print this message
	@grep -E '^[a-zA-Z0-9 -]+:.*#'  Makefile | while read -r l; do printf "\033[1;32m$$(echo $$l | cut -f 1 -d':')\033[00m:\t$$(echo $$l | cut -f 2- -d'#')\n"; done

node_modules: package.json package-lock.json # Install npm dependencies specified in package.json
	 ${NODE_RUN} npm install

.PHONY: tailwind
tailwind: node_modules assets/css/index.css # Run tailwind once to build the index.css file
assets/css/index.css: assets/css/input.css
	${NODE_RUN} npx tailwindcss -i ./assets/css/input.css -o ./assets/css/index.css --jit

.PHONY: tailwind-watch
tailwind-watch: tailwind # Run tailwind watch so any changes in the templates are detected and rebuilt
	${NODE_RUN} npx tailwindcss -i ./assets/css/input.css -o ./assets/css/index.css --jit --watch

.PHONY: hugo-server
hugo-server: # Run Hugo in development mode, starting a server on http://localhost:1313
	docker compose up -d hugo
	open http://localhost:1313

.PHONY: start
start: tailwind hugo-server tailwind-watch # Start the full development environment

.PHONY: build-staging
build-staging: tailwind # Build the staging website in the build/staging folder
	${HUGO_RUN} build --environment=staging

.PHONY: build-production
build-production: tailwind # Build the staging website in the build/production folder
	${HUGO_RUN} build --environment=production

.PHONY: release
release: build-production # Deploy the site to production
	rsync -avz build/production/ websites@vps01:/home/websites/devhuman/