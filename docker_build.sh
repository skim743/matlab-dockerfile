#!/bin/bash

sudo docker build --build-arg MATLAB_RELEASE=r2023b \
                  --build-arg MATLAB_INSTALL_LOCATION="/opt/matlab/r2023b" \
                  -t matlab_backend .