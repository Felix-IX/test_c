#!/bin/bash

set -e  # if error, exit
BUILD_DIR="cmake-build-debug"
CXX=clang++-19
CC=clang-19

if [[ "$1" == "--clean" ]]; then
    echo "🧹 Cleaning old build cache..."
    rm -rf "$BUILD_DIR"
fi

echo "📁 Seting target dir: $BUILD_DIR"
mkdir -p "$BUILD_DIR"

echo "⚙️  Configuring CMake (Debug mode)..."
CC=$CC CXX=$CXX cmake -DCMAKE_BUILD_TYPE=Debug -S . -B "$BUILD_DIR"

echo "🔨 Starting build (make)..."
cmake --build "$BUILD_DIR" -- -j$(nproc)

echo "✅ Build success! "

