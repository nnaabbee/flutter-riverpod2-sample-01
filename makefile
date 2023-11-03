.PHONY: setup show-device

setup:
	fvm use 3.13.7
	fvm flutter clean
	fvm flutter pub get

show-device:
	fvm flutter devices
