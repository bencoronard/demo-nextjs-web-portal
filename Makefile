# Variables
NODE_MODULES := node_modules
PNPM := pnpm

.PHONY: help install dev build start lint clean

# Default target
help:
	@echo "Usage:"
	@echo "  make install        Install dependencies with pnpm"
	@echo "  make run            Run the development server"
	@echo "  make build          Build the application for production"
	@echo "  make start          Start the production server"
	@echo "  make lint           Run linting"
	@echo "  make clean          Remove .next and node_modules"

install:
	$(PNPM) install

run:
	$(PNPM) dev

build:
	$(PNPM) build

start:
	$(PNPM) start

lint:
	$(PNPM) lint

clean:
	rm -rf .next $(NODE_MODULES)