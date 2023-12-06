#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -V --version                     Print program version and exit.
# @flag -h --help                        Print this help screen.
# @flag -C --crc32                       Calculate CRC32 checksum.
# @flag --crc32c                         Calculate CRC32C checksum.
# @flag --md4                            Calculate MD4 message digest.
# @flag -M --md5                         Calculate MD5 message digest.
# @flag -H --sha1                        Calculate SHA1 message digest.
# @flag --sha224                         Calculate SHA2 message digest.
# @flag --sha256                         Calculate SHA2 message digest.
# @flag --sha384                         Calculate SHA2 message digest.
# @flag --sha512                         Calculate SHA2 message digest.
# @flag --sha3-224                       Calculate SHA3 message digest.
# @flag --sha3-256                       Calculate SHA3 message digest.
# @flag --sha3-384                       Calculate SHA3 message digest.
# @flag --sha3-512                       Calculate SHA3 message digest.
# @flag -T --tth                         Calculate TTH message digest.
# @flag --btih                           Calculate BitTorrent InfoHash message digest.
# @flag -A --aich                        Calculate AICH message digest.
# @flag -E --ed2k                        Calculate eDonkey message digest.
# @flag -L --ed2k-link                   Calculate and print eDonkey link.
# @flag --tiger                          Calculate Tiger message digest.
# @flag -G --gost12-256                  Calculate GOST R 34.11-2012, 256 bit message digest.
# @flag --gost12-512                     Calculate GOST R 34.11-2012, 512 bit message digest.
# @flag --gost94                         Calculate GOST R 34.11-94 message digest.
# @flag --gost94-cryptopro               Calculate GOST R 34.11-94 CryptoPro message digest.
# @flag --ripemd160                      Calculate RIPEMD-160 message digest.
# @flag --has160                         Calculate HAS-160 message digest.
# @flag --blake2s                        Calculate BLAKE2S/BLAKE2B message digest.
# @flag --blake2b                        Calculate BLAKE2S/BLAKE2B message digest.
# @flag --edonr256                       Calculate EDON-R 256/512 message digest.
# @flag --edonr512                       Calculate EDON-R 256/512 message digest.
# @flag --snefru128                      Calculate SNEFRU-128/256 message digest.
# @flag --snefru256                      Calculate SNEFRU-128/256 message digest.
# @flag -a --all                         Calculate all supported hash functions.
# @flag -c --check                       Check hash files specified by command line.
# @option -u --update <file>             Update the specified hash file.
# @option --missing <file>               Read the hash file and print missing and inaccessible files.
# @option --unverified <file>            Print files that can't be verified by the hash file.
# @flag -e --embed-crc                   Rename files by inserting crc32 sum into name.
# @flag -k --check-embedded              Verify files by crc32 sum embedded in their names.
# @flag --list-hashes                    List the names of supported hash functions, one per line.
# @flag -B --benchmark                   Benchmark selected algorithm.
# @flag -v --verbose                     Be verbose.
# @flag --brief                          Use brief form of hash file verification report.
# @flag -r --recursive                   Process directories recursively.
# @option --file-list <file>             Process a list of files.
# @option -m --message <text>            Process the text message.
# @flag --skip-ok                        Don't print OK messages for successfully verified files.
# @flag --ignore-missing                 Ignore missing files, while verifying a hash file.
# @flag -i --ignore-case                 Ignore case of filenames when updating hash files.
# @flag -P --percents                    Show percents, while calculating or verifying message digests.
# @flag --speed                          Output per-file and total processing speed.
# @option --max-depth <n>                Descend at most <n> levels of directories.
# @option -o --output <file>             File to output calculation or checking results.
# @option -l --log <file>                File to log errors and verbose information.
# @flag --sfv                            Print message digests, using SFV format (default).
# @flag --bsd                            Print message digests, using BSD-like format.
# @flag --simple                         Print message digests, using simple format.
# @flag --hex                            Print message digests in hexadecimal format.
# @flag --base32                         Print message digests in Base32 format.
# @flag -b --base64                      Print message digests in Base64 format.
# @flag -g --magnet                      Print message digests as magnet links.
# @flag --torrent                        Create torrent files.
# @option --template <file>              Load a printf-like template from the <file>
# @option -p --printf <format string>    Format and print message digests.
# @arg file* <FILE|->

command eval "$(argc --argc-eval "$0" "$@")"