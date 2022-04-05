#!/bin/bash

# replaces the URLs for tensorflow models used by WebGazer with relative paths
# to avoid loading resources from third-party servers

TARGET=$1

FACEMESH_URL="https://tfhub.dev/mediapipe/tfjs-model/facemesh/1/default/1"
IRIS_URL="https://tfhub.dev/mediapipe/tfjs-model/iris/1/default/2"
BLAZEFACE_URL="https://tfhub.dev/tensorflow/tfjs-model/blazeface/1/default/1"

sed -i.bak "s#$FACEMESH_URL#./webgazer/facemesh/#g" $TARGET
sed -i.bak "s#$IRIS_URL#./webgazer/iris/#g" $TARGET
sed -i.bak "s#$BLAZEFACE_URL#./webgazer/blazeface/#g" $TARGET

