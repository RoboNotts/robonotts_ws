#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_client"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/install/lib/python3/dist-packages:/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/build" \
    "/usr/bin/python3" \
    "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_client/setup.py" \
     \
    build --build-base "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/build/metrics_refbox_client" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/install" --install-scripts="/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/install/bin"
