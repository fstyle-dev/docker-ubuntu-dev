# docker-ubuntu-dev


### Running eclipse ide

```bash
xhost +local:docker
docker run --rm -it --privileged \
                -v ${PWD}:/workspace \
                -e DISPLAY=unix$DISPLAY \
                -v /tmp/.X11-unix:/tmp/.X11-unix \
                fstyle/ubuntu-dev \
                /opt/eclipse/eclipse
```
