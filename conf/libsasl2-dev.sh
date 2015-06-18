#!/usr/bin/env bash
echo "BUILD_DIR: $BUILD_DIR" | indent | indent
echo "CACHE_DIR: $CACHE_DIR" | indent | indent
echo "LP_DIR:    $LP_DIR"    | indent | indent

TEST_VAR="a_value_for_test_var"
export-env TEST_VAR "$TEST_VAR"
echo "Set TEST_VAR to: $TEST_VAR" | indent | indent

ls -al $BUILD_DIR
echo
ls -al $CACHE_DIR
echo
ls -al $LP_DIR
echo
cat $EXPORT_PATH

