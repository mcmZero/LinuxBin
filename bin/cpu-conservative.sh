#!/bin/bash

gv=conservative
for cpu in /sys/devices/system/cpu/cpu?/cpufreq/scaling_governor; do
    echo $gv > $cpu
    cat $cpu
done
