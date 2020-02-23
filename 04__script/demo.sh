#!/bin/sh

case $1 in
    pi)
        echo 3.1415
        ;;
    zero)
        echo 0
        ;;
    tau)
        echo 6.28318
        ;;
    *)
        echo unknown
        ;;
esac