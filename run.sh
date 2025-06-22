#!/bin/bash

BUILD_DIR="cmake-build-debug"
EXECUTABLE="test_c"

EXEC_PATH="$BUILD_DIR/$EXECUTABLE"

if [ ! -x "$EXEC_PATH" ]; then
  echo "❌ Executable unavalible or doesn't exist: $EXEC_PATH"
  exit 1
fi

echo "Running $EXEC_PATH ..."
"$EXEC_PATH"

