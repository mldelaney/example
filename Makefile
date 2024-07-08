SHELL				= /bin/bash
.SHELLFLAGS			= -c -o pipefail

.SILENT:

PROJECT				:= $(shell cat Cargo.toml | head -n5 | grep name | cut -d'=' -f2 | tr -d '"' | tr -d '[[:space:]]')
VERSION 			:= $(shell cat Cargo.toml | head -n5 | grep version | cut -d'=' -f2 | tr -d '"' | tr -d '[[:space:]]')

.DEFAULT_GOAL: target/debug/$(PROJECT)


target/release/$(PROJECT): | format
	cargo build --release


target/debug/$(PROJECT): | format
	cargo build

clippy:
	cargo clippy

format:
	cargo +nightly fmt
