#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h -help                    short help
# @flag -H -longhelp                long help
# @option -q <float>                quality factor (0:small..100:big), default=75
# @option -alpha_q <int>            transparency-compression quality (0..100), default=100
# @option -preset[default|photo|picture|drawing|icon|text] <string>  preset setting, one of: default, photo, picture, drawing, icon, text
# @option -z <int>                  activates lossless preset with given level in [0:fast, ..., 9:slowest]
# @option -m <int>                  compression method (0=fast, 6=slowest), default=4
# @option -segments <int>           number of segments to use (1..4), default=4
# @option -size <int>               target size (in bytes)
# @option -psnr <float>             target PSNR (in dB.
# @option -s <int> <int>            input size (width x height) for YUV
# @option -sns <int>                spatial noise shaping (0:off, 100:max), default=50
# @option -f <int>                  filter strength (0=off..100), default=60
# @option -sharpness <int>          filter sharpness (0:most .. 7:least sharp), default=0
# @flag -strong                     use strong filter instead of simple (default)
# @flag -nostrong                   use simple filter instead of strong
# @flag -sharp_yuv                  use sharper (and slower) RGB->YUV conversion
# @option -partition_limit <int>    limit quality to fit the 512k limit on the first partition (0=no degradation ... 100=full)
# @option -pass <int>               analysis pass number (1..10)
# @option -qrange <min> <max>       specifies the permissible quality range (default: 0 100)
# @option -crop <x> <y> <w> <h>     crop picture with the given rectangle
# @option -resize <w> <h>           resize picture (*after* any cropping)
# @flag -mt                         use multi-threading if available
# @flag -low_memory                 reduce memory usage (slower encoding)
# @option -map <int>                print map of extra info
# @flag -print_psnr                 prints averaged PSNR distortion
# @flag -print_ssim                 prints averaged SSIM distortion
# @flag -print_lsim                 prints local-similarity distortion
# @option -d <file.pgm>             dump the compressed output (PGM file)
# @option -alpha_method <int>       transparency-compression method (0..1), default=1
# @option -alpha_filter <string>    predictive filtering for alpha plane, one of: none, fast (default) or best
# @flag -exact                      preserve RGB values in transparent area, default=off
# @option -blend_alpha <hex>        blend colors against background color expressed as RGB values written in hexadecimal, e.g. 0xc0e0d0 for red=0xc0 green=0xe0 and blue=0xd0
# @flag -noalpha                    discard any transparency information
# @flag -lossless                   encode image losslessly, default=off
# @option -near_lossless <int>      use near-lossless image preprocessing (0..100=off), default=100
# @option -hint <string>            specify image characteristics hint, one of: photo, picture or graph
# @option -metadata[all|none|exif|icc|xmp] <string>  comma separated list of metadata to copy from the input to the output if present.
# @flag -short                      condense printed message
# @flag -quiet                      don't print anything
# @flag -version                    print version number and exit
# @flag -noasm                      disable all assembly optimizations
# @flag -v                          verbose, e.g. print encoding/decoding times
# @flag -progress                   report encoding progress
# @flag -jpeg_like                  roughly match expected JPEG size
# @flag -af                         auto-adjust filter strength
# @option -pre <int>                pre-processing filter
# @arg in_file

command eval "$(argc --argc-eval "$0" "$@")"