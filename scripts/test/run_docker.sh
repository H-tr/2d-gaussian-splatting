xhost local:docker

DATASETS=/media/run/Extend/Data/rls/

docker run -v ${DATASETS}:/app/data \
-v $(pwd):/app \
--rm --gpus all \
-e DISPLAY=$DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix:rw  \
--privileged \
--device /dev/dri \
--net=host \
--volume="$HOME/.Xauthority:/root/.Xauthority:rw" \
-it \
gof:v1 bash

#./build/bundle_fusion_example ./zParametersDefault.txt ./zParametersBundlingDefault.txt data