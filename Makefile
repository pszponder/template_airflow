# =======================================
# Makefile for the Apache Airflow project
# =======================================

.ONESHELL:

# Include the .env file
include .env

# Define default target
.DEFAULT_GOAL := help

# ================================================
# HELPERS
# ================================================

# Default target
.PHONY: help
help: ## List available commands
	@echo "Available commands:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  make %-15s - %s\n", $$1, $$2}'
