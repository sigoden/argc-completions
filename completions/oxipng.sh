#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -o --opt[`_choice_opt`] <level>          Set the optimization level preset.
# @flag -r --recursive                             When directories are given as input, traverse the directory trees and optimize all PNG files found (files with “.png” or “.apng” extension).
# @option --dir <directory>                        Write output file(s) to <directory>.
# @option --out <file>                             Write output file to <file>
# @flag --stdout                                   Write output to stdout
# @flag -p --preserve                              Preserve file permissions and timestamps if possible
# @flag -P --pretend                               Do not write any files, only show compression results
# @flag -s                                         Strip safely-removable chunks, same as '--strip safe'
# @option --strip*,[`_choice_strip`] <mode>        Strip metadata chunks, where <mode> is one of:
# @option --keep*,[`_choice_chunk_name`] <list>    Strip all metadata except in the comma-separated list
# @flag -a --alpha                                 Perform additional optimization on images with an alpha channel, by altering the color values of fully transparent pixels.
# @option -i --interlace[`_choice_interlace`] <type>  Set the PNG interlacing type, where <type> is one of:
# @flag --scale16                                  Forcibly reduce images with 16 bits per channel to 8 bits per channel.
# @flag -v --verbose*                              Run in verbose mode (use twice to increase verbosity)
# @flag -q --quiet                                 Run in quiet mode
# @option -f --filters*,[`_choice_filter`] <list>  Perform compression trials with each of the given filter types.
# @flag --fast                                     Perform a fast compression evaluation of each enabled filter, followed by a single main compression trial of the best result.
# @option --zc <level>                             Deflate compression level (1-12) for main compression trials.
# @flag --nb                                       Do not change bit depth
# @flag --nc                                       Do not change color type
# @flag --np                                       Do not change color palette
# @flag --ng                                       Do not change to or from grayscale
# @flag --nx                                       Do not perform any transformations and do not deinterlace by default.
# @flag --nz                                       Do not recompress IDAT unless required due to transformations.
# @flag --fix                                      Do not perform checksum validation of PNG chunks.
# @flag --force                                    Write the output even if it is larger than the input
# @flag -Z --zopfli                                Use the much slower but stronger Zopfli compressor for main compression trials.
# @option --timeout <secs>                         Maximum amount of time, in seconds, to spend on optimizations.
# @option -t --threads <num>                       Set number of threads to use [default: num CPU cores]
# @flag -h --help                                  Print help (see a summary with '-h')
# @flag -V --version                               Print version
# @arg files+                                      File(s) to compress (use '-' for stdin)

_choice_opt() {
    cat <<-'EOF'
0	--zc 5 --fast (1 trial, determined heuristically)
1	--zc 10 --fast (1 trial, determined heuristically)
2	--zc 11 -f 0,1,6,7 --fast (4 fast trials, 1 main trial)
3	--zc 11 -f 0,7,8,9 (4 trials)
4	--zc 12 -f 0,7,8,9 (4 trials)
5	--zc 12 -f 0,1,2,5,6,7,8,9 (8 trials)
6	--zc 12 -f 0-9 (10 trials)
max	(stable alias for the max level)
EOF
}

_choice_strip() {
    cat <<-'EOF'
safe	Strip all non-critical chunks, except for the following: cICP, iCCP, sRGB, pHYs, acTL, fcTL, fdAT
all	Strip all non-critical chunks
EOF
    _choice_chunk_name
}

_choice_chunk_name() {
    cat <<-'EOF'
IHDR	Image Header
PLTE	Palette
IDAT	Image Data
IEND	Image End
bKGD	Background Color
cHRM	Primary Chromaticities
gAMA	Image Gamma
hIST	Image Histogram
iCCP	ICC Profile
iTXt	International Text
pHYs	Physical Pixel Dimensions
sBIT	Significant Bits
sRGB	Standard RGB Color Space
tEXt	Text
tIME	Image Last-Modification Time
tRNS	Transparency
zTXt	Compressed Text
EOF
}

_choice_interlace() {
    cat <<-'EOF'
0	Remove interlacing from all images that are processed
1	Apply Adam7 interlacing on all images that are processed
keep	Keep the existing interlacing type of each image
EOF
}

_choice_filter() {
    cat <<-'EOF'
0	None      (recommended to always include this filter)
1	Sub
2	Up
3	Average
4	Paeth
5	MinSum    Minimum sum of absolute differences
6	Entropy   Highest Shannon entropy
7	Bigrams   Lowest count of distinct bigrams
8	BigEnt    Highest Shannon entropy of bigrams
9	Brute     Smallest compressed size (slow)
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"