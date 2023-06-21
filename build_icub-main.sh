#!/bin/bash

################################################################################
#                                                                              #
# Copyright (C) 2023 Fondazione Istitito Italiano di Tecnologia (IIT)          #
# All Rights Reserved.                                                         #
#                                                                              #
################################################################################

ICUB_MAIN_DIR=/workspace/icub-main
ROBOTOLOGY_SUPERBUILD_INSTALL_DIR=/robotology-superbuild-install
BUILD_TYPE=Release

mkdir -p ${ICUB_MAIN_DIR}/build
cd ${ICUB_MAIN_DIR}/build
cmake .. \
      -DCMAKE_BUILD_TYPE=${BUILD_TYPE} \
      -DCMAKE_INSTALL_PREFIX=${ROBOTOLOGY_SUPERBUILD_INSTALL_DIR} \
      -DENABLE_icubmod_cartesiancontrollerserver:BOOL=TRUE \
      -DENABLE_icubmod_cartesiancontrollerclient:BOOL=TRUE \
      -DENABLE_icubmod_gazecontrollerclient:BOOL=TRUE
make install
