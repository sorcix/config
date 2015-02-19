#!/bin/bash
#

GPG_DIR=$HOME/.gnupg
GPG_CONF=$GPG_DIR/gpg.conf

# Create the GnuPG config directory if it doesn't exist.
if [ ! -d $GPG_DIR ]; then
	mkdir $GPG_DIR
fi

chmod 700 $GPG_DIR

if [ -f $GPG_CONF ]; then
	chmod 700 $GPG_CONF
fi

# Copy the versioned configuration file
cp gpg.conf $GPG_CONF

# Secure permissions
chmod 600 $GPG_DIR/*
chmod 400 $GPG_CONF
