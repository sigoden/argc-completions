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
# @flag --sector-align                             Align encoding of multiple CD format files on sector boundaries.
# @flag --ignore-chunk-sizes                       When encoding to flac, ignore the file size headers in WAV and AIFF files to attempt to work around problems with over-sized or malformed files.
# @option -S --seekpoint <<v>|X|<v>x|<v>s>         Include a point or points in a SEEKTABLE.
# @option -P --padding <v>                         Tell the encoder to write a PADDING metadata block of the given length (in bytes) after the STREAMINFO block.
# @option -T --tag <FIELD=VALUE>                   Add a FLAC tag.
# @option --tag-from-file <FIELD=FILENAME>         Like --tag, except FILENAME is a file whose contents will be read verbatim to set the tag value.
# @option -b --blocksize <v>                       Specify the block size in samples.
# @flag -m --mid-side                              Try mid-side coding for each frame (stereo input only)
# @flag -M --adaptive-mid-side                     Adaptive mid-side coding for all frames (stereo input only)
# @flag -0 --compression-level-0                   Fastest compression..highest compression (default is -5).
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
# @option --sign[signed|unsigned]                  Set the sign of samples (the default is signed).
# @option --input-size <v>                         Specify the size of the raw input in bytes.
# @flag --force-raw-format                         Force input (when encoding) or output (when decoding) to be treated as raw samples (even if filename ends in .wav).
# @flag --force-aiff-format                        Force the decoder to output AIFF format.
# @flag --force-rf64-format                        Force the decoder to output RF64 format.
# @flag --force-wave64-format                      Force the decoder to output Wave64 format.
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
# @flag --no-sector-align
# @flag --no-seektable
# @flag --no-silent
# @flag --no-verify
# @flag --no-warnings-as-errors                    These flags can be used to invert the sense of the corresponding normal option.

command eval "$(argc --argc-eval "$0" "$@")"