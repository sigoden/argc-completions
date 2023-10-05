_patch_help() {
    $@ -help | \
    sed \
        -e '/^Where commands include:/,/^\s*$/ s/^\s\+\(\S\+\) - \(.*\)/  \1    \2/' \
        -e '/^Where commands include:/ c\Commands:' \

}

_patch_table() {
    table="$( \
        _patch_table_edit_options \
            '-colormap;[shared|private]' \
            '-colorspace;[`_choice_colorspace`]' \
            '-compose;[`_choice_compose`]' \
            '-compress;[`_choice_compress`]' \
            '-dispose;[`_choice_dispose`]' \
            '-encoding;[`_choice_encoding`]' \
            '-endian;[MSB|LSB|Native]' \
            '-filter;[`_choice_filter`]' \
            '-highlight-style;[Assign|Threshold|Tint|XOR]' \
            '-intent;[Absolute|Perceptual|Relative|Saturation]' \
            '-interlace;[None|Line|Plane|Partition]' \
            '-list;[Color|Delegate|Format|Magic|Module|Resource|Type]' \
            '-map;[`_choice_map`]' \
            '-noise;[Uniform|Gaussian|Multiplicative|Impulse|Laplacian|Poisson|Random]' \
            '-page;[`_choie_page`]' \
            '-preview;[`_choice_preview`]' \
            '-type;[`_choice_type`]' \
            '-units;[Undefined|PixelsPerInch|PixelsPerCentimeter]' \
            '-virtual-pixel;[`_choice_virtual_pixel`]' \
            '-visual;[`_choice_visual`]' \
    )"
    if [[ "$*" == "gm" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            ';;' \
            '-help;;print help' \
        | \
        _patch_table_edit_arguments ';;'

    elif [[ "$*" == "gm mogrify" ]]; then
        echo "$table" | \
        _patch_table_dedup_options \
            '-fill' \

    else
        echo "$table"
    fi
}

_choice_colorspace() {
    printf "%s\n" CineonLog CMYK GRAY HSL HWB OHTA RGB Rec601Luma Rec709Luma \
        Rec601YCbCr Rec709YCbCr Transparent XYZ YCbCr YIQ YPbPr YUV
}

_choice_map() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
    else
        printf "%s\n" best default gray red green blue
    fi
}

_choice_type() {
    printf "%s\n" Bilevel Grayscale Palette PaletteMatte TrueColor TrueColorMatte \
        ColorSeparation ColorSeparationMatte Optimize
}

_choice_visual() {
    printf "%s\n" StaticGray GrayScale StaticColor PseudoColor TrueColor DirectColor default 'visual id'
}

_choice_virtual_pixel() {
    cat <<-'EOF'
Constant	Use the image background color.
Edge	Extend the edge pixel toward infinity (default).
Mirror	Mirror the image.
Tile	Tile the image.
EOF
}

_choice_compress() {
    printf "%s\n" None BZip Fax Group3 Group4 JPEG Lossless LZW RLE Zip LZMA \
        JPEG2000 JPEG2000 JBIG JBIG2 WebP ZSTD
}

_choice_compose() {
    printf "%s\n" Over In Out Atop Xor Plus Minus Add Subtract Difference Divide \
        Multiply Bumpmap Copy CopyRed CopyGreen CopyBlue CopyOpacity CopyCyan \
        CopyMagenta CopyYellow CopyBlack
}

_choice_dispose() {
    cat <<-'EOF'
Undefined	No disposal specified.
None	Do not dispose between frames.
Background	Overwrite the image area with the background color.
Previous	Overwrite the image area with what was there prior to rendering the image.
EOF
}

_choice_encoding() {
    printf "%s\n" AdobeCustom AdobeExpert AdobeStandard AppleRoman BIG5 GB2312 \
        'Latin 2' None SJIScode Symbol Unicode Wansung
}

_choice_filter() {
    printf "%s\n" Point Box Triangle Hermite Hanning Hamming Blackman Gaussian \
        Quadratic Cubic Catrom Mitchell Lanczos Bessel Sinc
}

_choie_page() {
    cat <<-'EOF'
11x17	792x1224
Ledger	1224x792
Legal	612x1008
Letter	612x792
LetterSmall	612x792
ArchE	2592x3456
ArchD	1728x2592
ArchC	1296x1728
ArchB	864x1296
ArchA	648x864
A0	2380x3368
A1	1684x2380
A2	1190x1684
A3	842x1190
A4	595x842
A4Small	595x842
A5	421x595
A6	297x421
A7	210x297
A8	148x210
A9	105x148
A10	74x105
B0	2836x4008
B1	2004x2836
B2	1418x2004
B3	1002x1418
B4	709x1002
B5	501x709
C0	2600x3677
C1	1837x2600
C2	1298x1837
C3	918x1298
C4	649x918
C5	459x649
C6	323x459
Flsa	612x936
Flse	612x936
HalfLetter	396x612
EOF
}

_choice_preview() {
    printf "%\sn" Rotate Shear Roll Hue Saturation Brightness Gamma Spiff Dull \
        Grayscale Quantize Despeckle ReduceNoise AddNoise Sharpen Blur Threshold \
        EdgeDetect Spread Shade Raise Segment Solarize Swirl Implode Wave OilPaint \
        CharcoalDrawing JPEG
}
