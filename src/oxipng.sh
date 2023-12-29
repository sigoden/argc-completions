_patch_table() {
    _patch_table_edit_options \
        '--filters;*,[`_choice_filter`]' \
        '--interlace;[`_choice_interlace`]' \
        '--keep;*,[`_choice_chunk_name`]' \
        '--opt;[`_choice_opt`]' \
        '--strip;*,[`_choice_strip`]' \

}

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
