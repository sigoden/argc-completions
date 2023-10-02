#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta inherit-flag-options
# @flag -? --help                            Show this help message
# @flag --usage                              Display brief usage
# @flag -V --version                         Print package version
# @option --active-name <STRING>             Override device autodetection of dm device to be reencrypted
# @option --align-payload <SECTORS>          Align payload at <n> sector boundaries - for luksFormat
# @flag --allow-discards                     Allow discards (aka TRIM) requests for device
# @flag -q --batch-mode                      Do not ask for confirmation
# @flag --cancel-deferred                    Cancel a previously set deferred device removal
# @option -c --cipher <STRING>               The cipher used to encrypt the disk (see /proc/crypto)
# @flag --debug                              Show debug messages
# @flag --debug-json                         Show debug messages including JSON metadata
# @flag --deferred                           Device removal is deferred until the last user closes it
# @option --device-size <bytes>              Use only specified device size (ignore rest of device).
# @flag --decrypt                            Decrypt LUKS2 device (remove encryption).
# @flag --disable-external-tokens            Disable loading of external LUKS2 token plugins
# @flag --disable-keyring                    Disable loading volume keys via kernel keyring
# @flag --disable-locks                      Disable locking of on-disk metadata
# @flag --disable-veracrypt                  Do not scan for VeraCrypt compatible device
# @flag --dump-json-metadata                 Dump info in JSON format (LUKS2 only)
# @flag --dump-master-key                    Dump volume (master) key instead of keyslots info
# @flag --encrypt                            Encrypt LUKS2 device (in-place encryption).
# @flag --force-password                     Disable password quality check (if enabled)
# @option -h --hash <STRING>                 The hash used to create the encryption key from the passphrase
# @option --header <STRING>                  Device or file with separated LUKS header
# @option --header-backup-file <STRING>      File with LUKS header and keyslots backup
# @option --hotzone-size <bytes>             Maximal reencryption hotzone size.
# @flag --init-only                          Initialize LUKS2 reencryption in metadata only.
# @option -I --integrity <STRING>            Data integrity algorithm (LUKS2 only)
# @flag --integrity-legacy-padding           Use inefficient legacy padding (old kernels)
# @flag --integrity-no-journal               Disable journal for integrity device
# @flag --integrity-no-wipe                  Do not wipe device after format
# @option -i --iter-time <msecs>             PBKDF iteration time for LUKS (in ms)
# @flag --iv-large-sectors                   Use IV counted in sector size (not in 512 bytes)
# @option --json-file <STRING>               Read or write the json from or to a file
# @option --key-description <STRING>         Key description
# @option -d --key-file <STRING>             Read the key from a file
# @option -s --key-size <BITS>               The size of the encryption key
# @option -S --key-slot <INT>                Slot number for new key (default is first free)
# @option --keyfile-offset <bytes>           Number of bytes to skip in keyfile
# @option -l --keyfile-size <bytes>          Limits the read from keyfile
# @option --keyslot-cipher <STRING>          LUKS2 keyslot: The cipher used for keyslot encryption
# @option --keyslot-key-size <BITS>          LUKS2 keyslot: The size of the encryption key
# @option --label <STRING>                   Set label for the LUKS2 device
# @option --luks2-keyslots-size <bytes>      LUKS2 header keyslots area size
# @option --luks2-metadata-size <bytes>      LUKS2 header metadata area size
# @option --master-key-file <STRING>         Read the volume (master) key from file.
# @option --new-keyfile-offset <bytes>       Number of bytes to skip in newly added keyfile
# @option --new-keyfile-size <bytes>         Limits the read from newly added keyfile
# @option -o --offset <SECTORS>              The start offset in the backend device
# @option --pbkdf[argon2i|argon2id|pbkdf2] <STRING>  PBKDF algorithm (for LUKS2): argon2i, argon2id, pbkdf2
# @option --pbkdf-force-iterations <LONG>    PBKDF iterations cost (forced, disables benchmark)
# @option --pbkdf-memory <kilobytes>         PBKDF memory cost limit
# @option --pbkdf-parallel <threads>         PBKDF parallel cost
# @flag --perf-no_read_workqueue             Bypass dm-crypt workqueue and process read requests synchronously
# @flag --perf-no_write_workqueue            Bypass dm-crypt workqueue and process write requests synchronously
# @flag --perf-same_cpu_crypt                Use dm-crypt same_cpu_crypt performance compatibility option
# @flag --perf-submit_from_crypt_cpus        Use dm-crypt submit_from_crypt_cpus performance compatibility option
# @flag --persistent                         Set activation flags persistent for device
# @option --priority[ignore|normal|prefer] <STRING>  Keyslot priority: ignore, normal, prefer
# @option --progress-frequency <secs>        Progress line update (in seconds)
# @flag -r --readonly                        Create a readonly mapping
# @option --reduce-device-size <bytes>       Reduce data device size (move data offset).
# @flag --refresh                            Refresh (reactivate) device with new parameters
# @option --resilience[checksum|journal|none] <STRING>  Reencryption hotzone resilience type
# @option --resilience-hash <STRING>         Reencryption hotzone checksums hash
# @flag --resume-only                        Resume initialized LUKS2 reencryption only.
# @option --sector-size <INT>                Encryption sector size (default: 512 bytes)
# @flag --serialize-memory-hard-pbkdf        Use global lock to serialize memory hard PBKDF (OOM workaround)
# @flag --shared                             Share device with another non-overlapping crypt segment
# @option -b --size <SECTORS>                The size of the device
# @option -p --skip <SECTORS>                How many sectors of the encrypted data to skip at the beginning
# @option --subsystem <STRING>               Set subsystem label for the LUKS2 device
# @flag --tcrypt-backup                      Use backup (secondary) TCRYPT header
# @flag --tcrypt-hidden                      Use hidden header (hidden TCRYPT device)
# @flag --tcrypt-system                      Device is system TCRYPT drive (with bootloader)
# @flag --test-args                          Do not run action, just validate all command line parameters
# @flag --test-passphrase                    Do not activate device, just check passphrase
# @option -t --timeout <secs>                Timeout for interactive passphrase prompt (in seconds)
# @option --token-id <INT>                   Token number (default: any)
# @flag --token-only                         Do not ask for passphrase if activation by token fails
# @option --token-type <STRING>              Restrict allowed token types used to retrieve LUKS2 key
# @option -T --tries <INT>                   How often the input of the passphrase can be retried
# @option -M --type[luks|luks1|luks2|plain|loopaes|tcrypt|bitlk] <STRING>  Type of device metadata: luks, luks1, luks2, plain, loopaes, tcrypt, bitlk
# @flag --unbound                            Create or dump unbound (no assigned data segment) LUKS2 keyslot
# @flag --use-random                         Use /dev/random for generating volume key
# @flag --use-urandom                        Use /dev/urandom for generating volume key
# @option --uuid <STRING>                    UUID for device to use
# @flag --veracrypt                          Scan also for VeraCrypt compatible device
# @option --veracrypt-pim <INT>              Personal Iteration Multiplier for VeraCrypt compatible device
# @flag --veracrypt-query-pim                Query Personal Iteration Multiplier for VeraCrypt compatible device
# @flag -v --verbose                         Shows more detailed error messages
# @flag -y --verify-passphrase               Verifies the passphrase by asking for it twice

# {{ cryptsetup open
# @cmd open device as <name>
# @meta inherit-flag-options
# @arg device![`_choice_device`]
# @arg name[`_choice_name`]
open() {
    :;
}
# }} cryptsetup open

# {{ cryptsetup close
# @cmd close device (remove mapping)
# @meta inherit-flag-options
# @arg name![`_choice_name`]
close() {
    :;
}
# }} cryptsetup close

# {{ cryptsetup resize
# @cmd resize active device
# @meta inherit-flag-options
# @arg name![`_choice_name`]
resize() {
    :;
}
# }} cryptsetup resize

# {{ cryptsetup status
# @cmd show device status
# @meta inherit-flag-options
# @arg name![`_choice_name`]
status() {
    :;
}
# }} cryptsetup status

# {{ cryptsetup benchmark
# @cmd benchmark cipher
# @meta inherit-flag-options
benchmark() {
    :;
}
# }} cryptsetup benchmark

# {{ cryptsetup repair
# @cmd try to repair on-disk metadata
# @meta inherit-flag-options
# @arg device![`_choice_device`]
repair() {
    :;
}
# }} cryptsetup repair

# {{ cryptsetup reencrypt
# @cmd reencrypt LUKS2 device
# @meta inherit-flag-options
# @arg device![`_choice_device`]
reencrypt() {
    :;
}
# }} cryptsetup reencrypt

# {{ cryptsetup erase
# @cmd erase all keyslots (remove encryption key)
# @meta inherit-flag-options
# @arg device![`_choice_device`]
erase() {
    :;
}
# }} cryptsetup erase

# {{ cryptsetup convert
# @cmd convert LUKS from/to LUKS2 format
# @meta inherit-flag-options
# @arg device![`_choice_device`]
convert() {
    :;
}
# }} cryptsetup convert

# {{ cryptsetup config
# @cmd set permanent configuration options for LUKS2
# @meta inherit-flag-options
# @arg device![`_choice_device`]
config() {
    :;
}
# }} cryptsetup config

# {{ cryptsetup luksFormat
# @cmd formats a LUKS device
# @meta inherit-flag-options
# @arg device![`_choice_device`]
# @arg new-key-file <new key file>
luksFormat() {
    :;
}
# }} cryptsetup luksFormat

# {{ cryptsetup luksAddKey
# @cmd add key to LUKS device
# @meta inherit-flag-options
# @arg device![`_choice_device`]
# @arg new-key-file <new key file>
luksAddKey() {
    :;
}
# }} cryptsetup luksAddKey

# {{ cryptsetup luksRemoveKey
# @cmd removes supplied key or key file from LUKS device
# @meta inherit-flag-options
# @arg device![`_choice_device`]
# @arg key-file <key file>
luksRemoveKey() {
    :;
}
# }} cryptsetup luksRemoveKey

# {{ cryptsetup luksChangeKey
# @cmd changes supplied key or key file of LUKS device
# @meta inherit-flag-options
# @arg device![`_choice_device`]
# @arg key-file <key file>
luksChangeKey() {
    :;
}
# }} cryptsetup luksChangeKey

# {{ cryptsetup luksConvertKey
# @cmd converts a key to new pbkdf parameters
# @meta inherit-flag-options
# @arg device![`_choice_device`]
# @arg key-file <key file>
luksConvertKey() {
    :;
}
# }} cryptsetup luksConvertKey

# {{ cryptsetup luksKillSlot
# @cmd wipes key with number <key slot> from LUKS device
# @meta inherit-flag-options
# @arg device![`_choice_device`]
# @arg key-slot! <key slot>
luksKillSlot() {
    :;
}
# }} cryptsetup luksKillSlot

# {{ cryptsetup luksUUID
# @cmd print UUID of LUKS device
# @meta inherit-flag-options
# @arg device![`_choice_device`]
luksUUID() {
    :;
}
# }} cryptsetup luksUUID

# {{ cryptsetup isLuks
# @cmd tests <device> for LUKS partition header
# @meta inherit-flag-options
# @arg device![`_choice_device`]
isLuks() {
    :;
}
# }} cryptsetup isLuks

# {{ cryptsetup luksDump
# @cmd dump LUKS partition information
# @meta inherit-flag-options
# @arg device![`_choice_device`]
luksDump() {
    :;
}
# }} cryptsetup luksDump

# {{ cryptsetup tcryptDump
# @cmd dump TCRYPT device information
# @meta inherit-flag-options
# @arg device![`_choice_device`]
tcryptDump() {
    :;
}
# }} cryptsetup tcryptDump

# {{ cryptsetup bitlkDump
# @cmd dump BITLK device information
# @meta inherit-flag-options
# @arg device![`_choice_device`]
bitlkDump() {
    :;
}
# }} cryptsetup bitlkDump

# {{ cryptsetup luksSuspend
# @cmd Suspend LUKS device and wipe key (all IOs are frozen)
# @meta inherit-flag-options
# @arg device![`_choice_device`]
luksSuspend() {
    :;
}
# }} cryptsetup luksSuspend

# {{ cryptsetup luksResume
# @cmd Resume suspended LUKS device
# @meta inherit-flag-options
# @arg device![`_choice_device`]
luksResume() {
    :;
}
# }} cryptsetup luksResume

# {{ cryptsetup luksHeaderBackup
# @cmd Backup LUKS device header and keyslots
# @meta inherit-flag-options
# @arg device![`_choice_device`]
luksHeaderBackup() {
    :;
}
# }} cryptsetup luksHeaderBackup

# {{ cryptsetup luksHeaderRestore
# @cmd Restore LUKS device header and keyslots
# @meta inherit-flag-options
# @arg device![`_choice_device`]
luksHeaderRestore() {
    :;
}
# }} cryptsetup luksHeaderRestore

# {{ cryptsetup token
# @cmd Manipulate LUKS2 tokens
# @meta inherit-flag-options
# @arg enum![add|remove|import|export]
# @arg device![`_choice_device`]
token() {
    :;
}
# }} cryptsetup token

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_device() {
    _argc_util_comp_path
}

_choice_name() {
    ls -1 /dev/mapper/ | grep -v '^control$'
}

command eval "$(argc --argc-eval "$0" "$@")"