_patch_help() {
    cat <<-'EOF' | _patch_help_embed_help $@
      --source <path-or-url>  path or url to disk image file, mountpoint, or web accessible disk image
      --puppetstrings   print out messages in format good for machine parsing
      --verbose         display verbose output
      --debug           display debug output
# version - Show version
# restore - restores a disk image or volume to another volume (including a mounted disk image)
      --target <target-path>  path to volume or mountpoint
      --erase            formats target volume
      --format <HFS+|HFSX>  target format when erasing (defaults to source)
      --noprompt         don't require confirmation on erase
      --noverify         don't checksum results
      --buffers <num>    number of buffers to use in block copy
      --buffersize <size>  size of buffers to use in block copy
      --csumbuffers <num>  number of buffers for the checksum if different
      --csumbuffersize <size>  size of buffers for the checksum if different
      --timeout <seconds>     max wait for stream in multicast client mode
      --SHA256           force asr to verify with a SHA2-256 hash

# server - multicasts source over the network.
      --interface <if>  Use 'if' as the interface for the server's
                        outgoing stream
      --config <configuration> server configuration file in plist format

# imagescan - calculate checksums of the data in the provided image and store them in the image. 
      --filechecksum  calculate file checksum
      --nostream      don't reorder file for multicast streaming

# info - report the image metadata which was placed in the image by a previous use of the imagescan verb.
      --plist         writes its output as an XML-formatted plist, suitable for parsing by another program.
EOF
}

_patch_table() {
    if [[ "$*" == "asr" ]]; then
        cat
        
    else
        _patch_table_copy_options asr
    fi
}
