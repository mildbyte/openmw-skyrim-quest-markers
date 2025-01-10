build:
	cyan build --prune

dist: build
	rm -rf dist
	mkdir -p dist/scripts/markers
	cp -r build/* dist/scripts/markers
	cp -r src/markers.omwscripts dist
