#!/bin/bash

set -e  # if error, exit
BUILD_DIR="cmake-build-debug"

echo "📁 Seting target dir: $BUILD_DIR"
mkdir -p "$BUILD_DIR"

echo "⚙️  Configuring CMake (Debug mode)..."
cmake -DCMAKE_BUILD_TYPE=Debug -S . -B "$BUILD_DIR"

echo "🔨 Starting build (make)..."
cmake --build "$BUILD_DIR" -- -j$(nproc)

echo "✅ Build success! "

