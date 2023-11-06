#!/bin/sh
export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

java -DLC_CTYPE=UTF-8 -Dfile.encoding=UTF-8 -cp lib/*:gateway/target/classes com.gitee.kooder.server.Gateway %1 %2 %3 %4 %5 %6