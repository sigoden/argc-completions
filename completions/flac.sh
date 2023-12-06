#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -v --version                               Show the flac version number
# @flag -h --help                                  Show basic usage and a list of all options
# @flag -H --explain                               Show detailed explanation of usage and all options
# @flag -d --decode                                Decode (the default behavior is to encode)
# @flag -t --test                                  Test a flac encoded file (same as -d except no decoded file is written)
# @flag -a --analyze                               Analyze a FLAC encoded file (same as -d except an analysis file is written)
# @flag -c --stdout                                Write output to stdout
# @flag -s --silent                                Silent mode (do not write runtime encode/decode statistics to stderr)
# @flag --totally-silent                           Do not print anything of any kind, including warnings or errors.
# @flag --no-utf8-convert                          Do not convert tags from local charset to UTF-8.
# @flag -w --warnings-as-errors                    Treat all warnings as errors (which cause flac to terminate with a non-zero exit code).
# @flag -f --force                                 Force overwriting of output files.
# @option -o --output-name <filename>              Force the output file name (usually flac just changes the extension).
# @option --output-prefix <string>                 Prefix each output file name with the given string.
# @flag --delete-input-file                        Automatically delete the input file after a successful encode or decode.
# @flag --preserve-modtime                         Output files have their timestamps/permissions set to match those of their inputs (this is default).
# @flag --keep-foreign-metadata                    If encoding, save WAVE, RF64, or AIFF non-audio chunks in FLAC metadata.
# @flag --keep-foreign-metadata-if-present         Like --keep-foreign-metadata, but without throwing an error if foreign metadata cannot be found or restored, instead printing a warning.
# @option --skip <<v>|mm:ss.ss>                    Skip over the first number of samples of the input.
# @option --until <<v>|[+|-]mm:ss.ss>              Stop at the given sample number for each input file.
# @flag --ogg                                      When encoding, generate Ogg FLAC output instead of native FLAC.
# @option --serial-number <v>                      When used with --ogg, specifies the serial number to use for the first Ogg FLAC stream, which is then incremented for each additional stream.
# @flag --residual-text                            Includes the residual signal in the analysis file.
# @flag --residual-gnuplot                         Generates a gnuplot file for every subframe; each file will contain the residual distribution of the subframe.
# @option --cue <[<v>.<v>][-[<v>.<v>]]>            Set the beginning and ending cuepoints to decode.
# @flag -F --decode-through-errors                 By default flac stops decoding with an error and removes the partially decoded file if it encounters a bitstream error.
# @option --apply-replaygain-which-is-not-lossless <specification>  Applies ReplayGain values while decoding.
# @flag -V --verify                                Verify a correct encoding by decoding the output in parallel and comparing to the original
# @flag --lax                                      Allow encoder to generate non-Subset files.
# @flag --replay-gain                              Calculate ReplayGain values and store them as FLAC tags, similar to vorbisgain.
# @option --cuesheet <filename>                    Import the given cuesheet file and store it in a CUESHEET metadata block.
# @option --picture[FILENAME|SPECIFICATION]        Import a picture and store it in a PICTURE metadata block.
# @flag --ignore-chunk-sizes                       When encoding to flac, ignore the file size headers in WAV and AIFF files to attempt to work around problems with over-sized or malformed files.
# @option -S --seekpoint <<v>|X|<v>x|<v>s>         Include a point or points in a SEEKTABLE.
# @option -P --padding <v>                         Tell the encoder to write a PADDING metadata block of the given length (in bytes) after the STREAMINFO block.
# @option -T --tag <FIELD=VALUE>                   Add a FLAC tag.
# @option --tag-from-file <FIELD=FILENAME>         Like --tag, except FILENAME is a file whose contents will be read verbatim to set the tag value.
# @option -b --blocksize <v>                       Specify the blocksize in samples.
# @flag -m --mid-side                              Try mid-side coding for each frame (stereo input only)
# @flag -M --adaptive-mid-side                     Adaptive mid-side coding for all frames (stereo input only)
# @flag -0 --compression-level-0                   Synonymous with -l 0 -b 1152 -r 3 --no-mid-side
# @flag -1 --compression-level-1                   Synonymous with -l 0 -b 1152 -M -r 3
# @flag -2 --compression-level-2                   Synonymous with -l 0 -b 1152 -m -r 3
# @flag -3 --compression-level-3                   Synonymous with -l 6 -b 4096 -r 4 --no-mid-side
# @flag -4 --compression-level-4                   Synonymous with -l 8 -b 4096 -M -r 4
# @flag -5 --compression-level-5                   Synonymous with -l 8 -b 4096 -m -r 5
# @flag -6 --compression-level-6                   Synonymous with -l 8 -b 4096 -m -r 6 -A subdivide_tukey(2)
# @flag -7 --compression-level-7                   Synonymous with -l 12 -b 4096 -m -r 6 -A subdivide_tukey(2)
# @flag -8 --compression-level-8                   Synonymous with -l 12 -b 4096 -m -r 6 -A subdivide_tukey(3)
# @flag --fast                                     Fastest compression.
# @flag --best                                     Highest compression.
# @flag -e --exhaustive-model-search               Do exhaustive model search (expensive!)
# @option -A --apodization <function>              Window audio data with given the apodization function.
# @option -l --max-lpc-order <v>                   Specifies the maximum LPC order.
# @flag -p --qlp-coeff-precision-search            Do exhaustive search of LP coefficient quantization (expensive!).
# @option -q --qlp-coeff-precision <v>             Precision of the quantized linear-predictor coefficients, 0 => let encoder decide (min is 5, default is 0)
# @option -r --rice-partition-order <[<v>,]<v>>    Set the [min,]max residual partition order (0..15).
# @option --endian[big|little]                     Set the byte order for samples
# @option --channels <v>                           Set number of channels.
# @option --bps <v>                                Set bits per sample.
# @option --sample-rate <v>                        Set sample rate (in Hz).
# @option --sign[signed|unsigned]                  Set the sign of samples.
# @option --input-size <v>                         Specify the size of the raw input in bytes.
# @flag --force-raw-format                         Force input (when encoding) or output (when decoding) to be treated as raw samples (even if filename ends in .wav).
# @flag --force-aiff-format
# @flag --force-rf64-format
# @option --force-wave64-format <:>                Force the decoder to output AIFF/RF64/WAVE64 format respectively.
# @flag --force-legacy-wave-format
# @option --force-extensible-wave-format <:>       Instruct the decoder to output a WAVE file with WAVE_FORMAT_PCM and WAVE_FORMAT_EXTENSIBLE respectively.
# @flag --force-aiff-c-none-format
# @option --force-aiff-c-sowt-format <:>           Instruct the decoder to output an AIFF-C file with format NONE and sowt respectively.
# @flag --no-adaptive-mid-side
# @flag --no-cued-seekpoints
# @flag --no-decode-through-errors
# @flag --no-delete-input-file
# @flag --no-preserve-modtime
# @flag --no-keep-foreign-metadata
# @flag --no-exhaustive-model-search
# @flag --no-force
# @flag --no-lax
# @flag --no-mid-side
# @flag --no-ogg
# @flag --no-padding
# @flag --no-qlp-coeff-prec-search
# @flag --no-replay-gain
# @flag --no-residual-gnuplot
# @flag --no-residual-text
# @flag --no-seektable
# @flag --no-silent
# @flag --no-verify
# @flag --no-warnings-as-errors

command eval "$(argc --argc-eval "$0" "$@")"