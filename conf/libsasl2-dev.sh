#!/usr/bin/env bash
VENDOR_DIR=$BUILD_DIR/.heroku/vendor
echo "Extracting libsasl2-dev to $VENDOR_DIR" | indent | indent
mkdir -p $VENDOR_DIR
tar -C $VENDOR_DIR -xzf $LP_DIR/files/libsasl2-dev/libsasl2-dev_2.1.23.dfsg1-5ubuntu1_amd64.usr.include.tar.gz

if [ -z "$C_INCLUDE_PATH" ]
then
    C_INCLUDE_PATH=/app/.heroku/vendor/include:/app/.heroku/vendor/include/sasl
else
    C_INCLUDE_PATH=$C_INCLUDE_PATH:/app/.heroku/vendor/include:/app/.heroku/vendor/include/sasl
fi
export-env C_INCLUDE_PATH "$C_INCLUDE_PATH"
echo "Set C_INCLUDE_PATH to: $C_INCLUDE_PATH" | indent | indent
