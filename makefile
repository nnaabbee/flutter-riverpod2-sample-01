.PHONY: setup show-device river-watch river-build

setup:
	fvm use 3.13.7
	fvm flutter clean
	fvm flutter pub get

show-device:
	fvm flutter devices

river-watch:
	fvm flutter pub run build_runner watch

river-build:
	fvm flutter pub run build_runner build --delete-conflicting-outputs
