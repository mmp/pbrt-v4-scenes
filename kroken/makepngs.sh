#!/bin/bash

if [[ $# == 0 ]]; then
    files=`echo camera-[0-9]-lowpoly.exr`
else
    files=( "$@" )
fi

#parallel 'imgtool whitebalance --temperature 6200 {} --outfile /tmp/wb-{}; imgtool convert --aces-filmic /tmp/wb-{} --outfile {.}png' ::: ${files[@]}

for f in ${files[@]}; do
    imgtool denoise-optix ${f} --outfile /tmp/denoised-${f}
    imgtool whitebalance --temperature 6200 /tmp/denoised-${f} --outfile /tmp/wb-${f}
    imgtool convert --aces-filmic /tmp/wb-${f} --outfile ${f%%exr}png
done

