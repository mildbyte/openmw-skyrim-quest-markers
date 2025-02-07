build:
	cyan build --prune

dist: build
	rm -rf dist
	mkdir -p dist/scripts/markers
	cp -r build/* dist/
	cp -r src/markers.omwscripts dist
	mkdir -p dist/Sound/markers
	cp -r resources/sounds/* dist/Sound/markers
