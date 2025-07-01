#!/bin/bash

set -e  # if error, exit
BUILD_DIR=cmake-build-debug
CXX=clang++-19
CC=clang-19
LINKER_FLAGS=-fuse-ld=lld
BUILD_SYSTEM=Ninja

if [[ "$1" == "--clean" ]]; then
    echo "🧹 Cleaning old build cache..."
    rm -rf "$BUILD_DIR"
    
    echo "📁 Seting target dir: $BUILD_DIR"
    mkdir -p "$BUILD_DIR"
fi

echo "⚙️ Configuring CMake (Debug mode)..."
export CC CXX  

cmake -G $BUILD_SYSTEM \
      -DCMAKE_BUILD_TYPE=Debug \
      -DCMAKE_EXE_LINKER_FLAGS="$LINKER_FLAGS" \
      -DCMAKE_SHARED_LINKER_FLAGS="$LINKER_FLAGS" \
      -S . -B "$BUILD_DIR"

echo "🔨 Starting build ($BUILD_SYSTEM)..."
cmake --build "$BUILD_DIR" -- -j$(nproc)

echo "✅ Build success! "

