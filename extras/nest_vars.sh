#!/bin/bash

# NEST is installed here. When you relocate NEST, change this variable.
export NEST_INSTALL_DIR=@CMAKE_INSTALL_PREFIX@

# NEST finds standard *.sli files $NEST_DATA_DIR/sli
export NEST_DATA_DIR=$NEST_INSTALL_DIR/@CMAKE_INSTALL_DATADIR@

# NEST finds help files $NEST_DOC_DIR/help
export NEST_DOC_DIR=$NEST_INSTALL_DIR/@CMAKE_INSTALL_DOCDIR@

# The path where NEST looks for user modules.
export NEST_MODULE_PATH=$NEST_INSTALL_DIR/@CMAKE_INSTALL_LIBDIR@/nest

# The path where the PyNEST bindings are installed.
export NEST_PYTHON_PREFIX=$NEST_INSTALL_DIR/${exec_prefix}/lib/python2.7/site-packages
export PYTHONPATH=$NEST_PYTHON_PREFIX:$PYTHONPATH

# Make nest / sli /... executables visible.
export PATH=$NEST_INSTALL_DIR/bin:$PATH
