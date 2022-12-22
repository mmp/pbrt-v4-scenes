#!/bin/bash

if [[ $# == 0 ]]; then
    files=`echo watercolor-camera-[0-9]*.exr`
else
    files=( "$@" )
fi

#parallel 'imgtool whitebalance --temperature 8000 {} --outfile wb-{};' \
#         'imgtool convert --scale 0.7 --aces-filmic wb-{} --outfile {.}png' ::: ${files[@]}

for f in ${files[@]}; do
    imgtool denoise-optix ${f} --outfile /tmp/denoised-${f}
    imgtool whitebalance --temperature 8000 /tmp/denoised-${f} --outfile /tmp/wb-${f}
    imgtool convert --scale 0.8 --aces-filmic /tmp/wb-${f} --outfile ${f%%exr}png
done
