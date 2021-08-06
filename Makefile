CRYSTAL_BIN ?= $(shell which crystal)
SHARDS_BIN ?= $(shell which shards)
TARGET_FILE = svg_sprite
SOURCE_FILE = ./tasks/svg_sprite.cr

generator:
	$(SHARDS_BIN) build
	$(CRYSTAL_BIN) build $(SOURCE_FILE) -o ../../bin/$(TARGET_FILE)
