# Makefile for building and running a C++ application using CMake
TARGET = App
BUILD_DIR = build

.PHONY: all init build run clean

all: init

init:
	@echo "==> Creating build directory && running cmake"
	mkdir -p $(BUILD_DIR)
	cd $(BUILD_DIR) && cmake ..

build:
	@echo "==> Building the project"
	cmake --build $(BUILD_DIR)

run:
	@echo "==> Running the application"
	./$(BUILD_DIR)/$(TARGET)

clean:
	@echo "==> Cleaning up build artifacts"
	rm -rf $(BUILD_DIR)

