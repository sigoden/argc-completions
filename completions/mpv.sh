#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --ab-loop-a <value>                      Time (default: no)
# @option --ab-loop-b <value>                      Time (default: no)
# @option --ab-loop-count <value>                  Choices: inf (or an integer) (0 to 2147483647) (default: inf)
# @flag --access-references
# @option --ad <value>                             String (default: )
# @option --ad-lavc-ac3drc <value>                 Float (0 to 6) (default: 0.000)
# @flag --ad-lavc-downmix
# @option --ad-lavc-o-add <value>
# @option --ad-lavc-o-append <value>
# @option --ad-lavc-o-set <value>
# @option --ad-lavc-o-remove <value>
# @option --ad-lavc-threads <value>                Integer (0 to 16) (default: 1)
# @flag --ad-queue-enable
# @option --ad-queue-max-bytes <value>             ByteSize (0 to 4.6116860184274e+18) (default: 1.000 MiB)
# @option --ad-queue-max-samples <value>           Integer64 (0 to any) (default: 48000)
# @option --ad-queue-max-secs <value>              Double (0 to any) (default: 1.000)
# @option --af-add <value>
# @option --af-append <value>
# @option --af-clr <value>
# @option --af-del <value>
# @option --af-help <value>
# @option --af-pre <value>
# @option --af-set <value>
# @option --af-toggle <value>
# @option --af-remove <value>
# @option --af-defaults-add <value>
# @option --af-defaults-append <value>
# @option --af-defaults-clr <value>
# @option --af-defaults-del <value>
# @option --af-defaults-help <value>
# @option --af-defaults-pre <value>
# @option --af-defaults-set <value>
# @option --af-defaults-toggle <value>
# @option --af-defaults-remove <value>
# @option --aid <value>                            Choices: no auto (or an integer) (0 to 8190) (default: auto)
# @option --alang-add <value>
# @option --alang-append <value>
# @option --alang-clr <value>
# @option --alang-del <value>
# @option --alang-pre <value>
# @option --alang-set <value>
# @option --alang-toggle <value>
# @option --alang-remove <value>
# @flag --allow-delayed-peak-detect
# @option --alpha <value>                          Choices: no yes blend blend-tiles (default: blend-tiles)
# @option --alsa-buffer-time <value>               Integer (0 to 2147483647) (default: 100000)
# @flag --alsa-ignore-chmap
# @option --alsa-mixer-device <value>              String (default: default)
# @option --alsa-mixer-index <value>               Integer (0 to 99) (default: 0)
# @option --alsa-mixer-name <value>                String (default: Master)
# @flag --alsa-non-interleaved
# @option --alsa-periods <value>                   Integer (0 to 2147483647) (default: 4)
# @flag --alsa-resample
# @option --ao-add <value>
# @option --ao-append <value>
# @option --ao-clr <value>
# @option --ao-del <value>
# @option --ao-help <value>
# @option --ao-pre <value>
# @option --ao-set <value>
# @option --ao-toggle <value>
# @option --ao-remove <value>
# @flag --ao-null-broken-delay
# @flag --ao-null-broken-eof
# @option --ao-null-buffer <value>                 Float (0 to 100) (default: 0.200)
# @option --ao-null-channel-layouts <value>        Audio channels or channel map (default: )
# @option --ao-null-format <value>                 Audio format (default: no)
# @option --ao-null-latency <value>                Float (0 to 100) (default: 0.000)
# @option --ao-null-outburst <value>               Integer (1 to 100000) (default: 256)
# @option --ao-null-speed <value>                  Float (0 to 10000) (default: 1.000)
# @flag --ao-null-untimed
# @flag --ao-pcm-append
# @option --ao-pcm-file <file>                     String (default: ) [file]
# @flag --ao-pcm-waveheader
# @option --audio <value>                          alias for aid
# @option --audio-backward-batch <value>           Integer (0 to 1024) (default: 10)
# @option --audio-backward-overlap <value>         Choices: auto (or an integer) (0 to 1024) (default: auto)
# @option --audio-buffer <value>                   Double (0 to 10) (default: 0.200)
# @option --audio-channels <value>                 Audio channels or channel map (default: auto-safe)
# @option --audio-client-name <value>              String (default: mpv)
# @option --audio-delay <value>                    Float (default: 0.000)
# @option --audio-demuxer <value>                  String (default: )
# @option --audio-device <value>                   String (default: auto)
# @option --audio-display <value>                  Choices: no embedded-first external-first (default: embedded-first)
# @flag --audio-exclusive
# @flag --audio-fallback-to-null
# @option --audio-file <value>                     alias for --audio-files-append (CLI/config files only)
# @option --audio-file-auto <value>                Choices: no exact fuzzy all (default: no)
# @option --audio-file-paths-add <value>
# @option --audio-file-paths-append <value>
# @option --audio-file-paths-clr <value>
# @option --audio-file-paths-del <value>
# @option --audio-file-paths-pre <value>
# @option --audio-file-paths-set <value>
# @option --audio-file-paths-toggle <value>
# @option --audio-file-paths-remove <value>
# @option --audio-files-add <value>
# @option --audio-files-append <value>
# @option --audio-files-clr <value>
# @option --audio-files-del <value>
# @option --audio-files-pre <value>
# @option --audio-files-set <value>
# @option --audio-files-toggle <value>
# @option --audio-files-remove <value>
# @option --audio-format <value>                   Audio format (default: no)
# @flag --audio-normalize-downmix
# @flag --audio-pitch-correction
# @option --audio-resample-cutoff <value>          Double (0 to 1) (default: 0.000)
# @option --audio-resample-filter-size <value>     Integer (0 to 32) (default: 16)
# @flag --audio-resample-linear
# @option --audio-resample-max-output-size <value>  Double (default: 40.000)
# @option --audio-resample-phase-shift <value>     Integer (0 to 30) (default: 10)
# @option --audio-reversal-buffer <value>          ByteSize (0 to 4.6116860184274e+18) (default: 64.000 MiB)
# @option --audio-samplerate <value>               Integer (0 to 768000) (default: 0)
# @option --audio-spdif <value>                    String (default: )
# @flag --audio-stream-silence
# @option --audio-swresample-o-add <value>
# @option --audio-swresample-o-append <value>
# @option --audio-swresample-o-set <value>
# @option --audio-swresample-o-remove <value>
# @option --audio-wait-open <value>                Float (0 to 60) (default: 0.000)
# @flag --auto-window-resize
# @option --autofit <value>                        Window size (default: )
# @option --autofit-larger <value>                 Window size (default: )
# @option --autofit-smaller <value>                Window size (default: )
# @flag --autoload-files
# @option --autosync <value>                       Choices: no (or an integer) (0 to 10000) (default: 0)
# @option --background <value>                     Color (default: ♯FF000000)
# @option --blend-subtitles <value>                Choices: no yes video (default: no)
# @option --bluray-device <file>                   String (default: ) [file]
# @flag --border
# @option --brightness <value>                     Float (-100 to 100) (default: 0.000)
# @option --cache <value>                          Choices: no auto yes (default: auto)
# @option --cache-dir <file>                       String (default: ) [file]
# @flag --cache-on-disk
# @flag --cache-pause
# @flag --cache-pause-initial
# @option --cache-pause-wait <value>               Float (0 to any) (default: 1.000)
# @option --cache-secs <value>                     Double (0 to any) (default: 3600000.000)
# @option --cache-unlink-files <value>             Choices: immediate whendone no (default: immediate)
# @option --chapter-merge-threshold <value>        Integer (0 to 10000) (default: 100)
# @option --chapter-seek-threshold <value>         Double (default: 5.000)
# @option --chapters-file <file>                   String (default: ) [file]
# @flag --config
# @option --config-dir <file>                      String (default: ) [not in config files] [file]
# @option --contrast <value>                       Float (-100 to 100) (default: 0.000)
# @flag --cookies
# @option --cookies-file <file>                    String (default: ) [file]
# @option --corner-rounding <value>                Float (0 to 1) (default: 0.000)
# @flag --correct-downscaling
# @flag --correct-pts
# @option --cover-art-auto <value>                 Choices: no exact fuzzy all (default: exact)
# @option --cover-art-file <value>                 alias for --cover-art-files-append (CLI/config files only)
# @option --cover-art-files-add <value>
# @option --cover-art-files-append <value>
# @option --cover-art-files-clr <value>
# @option --cover-art-files-del <value>
# @option --cover-art-files-pre <value>
# @option --cover-art-files-set <value>
# @option --cover-art-files-toggle <value>
# @option --cover-art-files-remove <value>
# @flag --cover-art-whitelist
# @option --cscale <value>                         String (default: bilinear)
# @option --cscale-antiring <value>                Float (0 to 1) (default: 0.000)
# @option --cscale-blur <value>                    Float (default: 0.000)
# @option --cscale-clamp <value>                   Float (0 to 1) (default: 0.000)
# @option --cscale-cutoff <value>                  Float (0 to 1) (default: 0.001)
# @option --cscale-param1 <value>                  Float (default: default)
# @option --cscale-param2 <value>                  Float (default: default)
# @option --cscale-radius <value>                  Float (0.5 to 16) (default: 0.000)
# @option --cscale-taper <value>                   Float (0 to 1) (default: 0.000)
# @option --cscale-wblur <value>                   Float (default: 0.000)
# @option --cscale-window <value>                  String (default: )
# @option --cscale-wparam <value>                  Float (default: default)
# @option --cscale-wtaper <value>                  Float (0 to 1) (default: 0.000)
# @option --cursor-autohide <value>                Choices: no always (or an integer) (0 to 30000) (default: 1000)
# @flag --cursor-autohide-fs-only
# @flag --deband
# @option --deband-grain <value>                   Float (0 to 4096) (default: 48.000)
# @option --deband-iterations <value>              Integer (1 to 16) (default: 1)
# @option --deband-range <value>                   Float (1 to 64) (default: 16.000)
# @option --deband-threshold <value>               Float (0 to 4096) (default: 32.000)
# @flag --deinterlace
# @option --demuxer <value>                        String (default: )
# @option --demuxer-backward-playback-step <value>  Double (0 to any) (default: 60.000)
# @flag --demuxer-cache-wait
# @option --demuxer-cue-codepage <value>           String (default: auto)
# @flag --demuxer-donate-buffer
# @option --demuxer-hysteresis-secs <value>        Double (0 to any) (default: 0.000)
# @flag --demuxer-lavf-allow-mimetype
# @option --demuxer-lavf-analyzeduration <value>   Float (0 to 3600) (default: 0.000)
# @option --demuxer-lavf-buffersize <value>        Integer (1 to 10485760) (default: 32768)
# @option --demuxer-lavf-format <value>            String (default: )
# @flag --demuxer-lavf-hacks
# @option --demuxer-lavf-linearize-timestamps <value>  Choices: no auto yes (default: auto)
# @option --demuxer-lavf-o-add <value>
# @option --demuxer-lavf-o-append <value>
# @option --demuxer-lavf-o-set <value>
# @option --demuxer-lavf-o-remove <value>
# @option --demuxer-lavf-probe-info <value>        Choices: no yes auto nostreams (default: auto)
# @option --demuxer-lavf-probescore <value>        Integer (1 to 100) (default: 26)
# @option --demuxer-lavf-probesize <value>         Integer (32 to 2147483647) (default: 0)
# @flag --demuxer-lavf-propagate-opts
# @option --demuxer-max-back-bytes <value>         ByteSize (0 to 4.6116860184274e+18) (default: 50.000 MiB)
# @option --demuxer-max-bytes <value>              ByteSize (0 to 4.6116860184274e+18) (default: 150.000 MiB)
# @flag --demuxer-mkv-probe-start-time
# @option --demuxer-mkv-probe-video-duration <value>  Choices: no yes full (default: no)
# @option --demuxer-mkv-subtitle-preroll <value>   Choices: no yes index (default: index)
# @option --demuxer-mkv-subtitle-preroll-secs <value>  Double (0 to any) (default: 1.000)
# @option --demuxer-mkv-subtitle-preroll-secs-index <value>  Double (0 to any) (default: 10.000)
# @option --demuxer-rawaudio-channels <value>      Audio channels or channel map (default: stereo)
# @option --demuxer-rawaudio-format <value>        Choices: u8 s8 u16le u16be s16le s16be u24le u24be s24le s24be u32le u32be s32le s32be floatle floatbe doublele doublebe u16 s16 u24 s24 u32 s32 float double (default: s16le)
# @option --demuxer-rawaudio-rate <value>          Integer (1000 to 384000) (default: 44100)
# @option --demuxer-rawvideo-codec <value>         String (default: )
# @option --demuxer-rawvideo-format <value>        FourCC (default: 30323449)
# @option --demuxer-rawvideo-fps <value>           Float (0.001 to 1000) (default: 25.000)
# @option --demuxer-rawvideo-h <value>             Integer (1 to 8192) (default: 720)
# @option --demuxer-rawvideo-mp-format <value>     Image format (default: no)
# @option --demuxer-rawvideo-size <value>          Integer (1 to 268435456) (default: 0)
# @option --demuxer-rawvideo-w <value>             Integer (1 to 8192) (default: 1280)
# @option --demuxer-readahead-secs <value>         Double (0 to any) (default: 1.000)
# @option --demuxer-seekable-cache <value>         Choices: auto no yes (default: auto)
# @option --demuxer-termination-timeout <value>    Double (default: 0.100)
# @flag --demuxer-thread
# @option --directory-mode <value>                 Choices: recursive lazy ignore (default: recursive)
# @option --display-tags-add <value>
# @option --display-tags-append <value>
# @option --display-tags-clr <value>
# @option --display-tags-del <value>
# @option --display-tags-pre <value>
# @option --display-tags-set <value>
# @option --display-tags-toggle <value>
# @option --display-tags-remove <value>
# @option --dither <value>                         Choices: fruit ordered error-diffusion no (default: fruit)
# @option --dither-depth <value>                   Choices: no auto (or an integer) (-1 to 16) (default: no)
# @option --dither-size-fruit <value>              Integer (2 to 8) (default: 6)
# @option --drag-and-drop <value>                  Choices: no auto replace append (default: auto)
# @option --drm-connector <value>                  String (default: )
# @option --drm-device <file>                      String (default: ) [file]
# @option --drm-draw-plane <value>                 Choices: primary overlay (or an integer) (0 to 2147483647) (default: primary)
# @option --drm-draw-surface-size <value>          Window size (default: )
# @option --drm-drmprime-video-plane <value>       Choices: primary overlay (or an integer) (0 to 2147483647) (default: overlay)
# @option --drm-format <value>                     Choices: xrgb8888 xrgb2101010 xbgr8888 xbgr2101010 (default: xrgb8888)
# @option --drm-mode <value>                       String (default: preferred)
# @option --drm-vrr-enabled <value>                Choices: no yes auto (default: no)
# @option --dscale <value>                         String (default: )
# @option --dscale-antiring <value>                Float (0 to 1) (default: 0.000)
# @option --dscale-blur <value>                    Float (default: 0.000)
# @option --dscale-clamp <value>                   Float (0 to 1) (default: 0.000)
# @option --dscale-cutoff <value>                  Float (0 to 1) (default: 0.001)
# @option --dscale-param1 <value>                  Float (default: default)
# @option --dscale-param2 <value>                  Float (default: default)
# @option --dscale-radius <value>                  Float (0.5 to 16) (default: 0.000)
# @option --dscale-taper <value>                   Float (0 to 1) (default: 0.000)
# @option --dscale-wblur <value>                   Float (default: 0.000)
# @option --dscale-window <value>                  String (default: )
# @option --dscale-wparam <value>                  Float (default: default)
# @option --dscale-wtaper <value>                  Float (0 to 1) (default: 0.000)
# @option --dump-stats <file>                      String (default: ) [file]
# @option --dvbin-card <value>                     Integer (0 to 15) (default: 0)
# @option --dvbin-channel-switch-offset <value>    Integer (default: 0)
# @option --dvbin-file <file>                      String (default: ) [file]
# @flag --dvbin-full-transponder
# @option --dvbin-prog <value>                     String (default: )
# @option --dvbin-timeout <value>                  Integer (1 to 30) (default: 30)
# @option --dvd-angle <value>                      Integer (1 to 99) (default: 1)
# @option --dvd-device <file>                      String (default: ) [file]
# @option --dvd-speed <value>                      Integer (default: 0)
# @option --edition <value>                        Choices: auto (or an integer) (0 to 8190) (default: auto)
# @flag --embeddedfonts
# @option --end <value>                            Relative time or percent position (default: none)
# @option --error-diffusion <value>                String (default: sierra-lite)
# @option --external-file <value>                  alias for --external-files-append (CLI/config files only)
# @option --external-files-add <value>
# @option --external-files-append <value>
# @option --external-files-clr <value>
# @option --external-files-del <value>
# @option --external-files-pre <value>
# @option --external-files-set <value>
# @option --external-files-toggle <value>
# @option --external-files-remove <value>
# @option --fbo-format <value>                     String (default: auto)
# @flag --focus-on-open
# @option --force-media-title <value>              String (default: )
# @flag --force-render
# @flag --force-rgba-osd-rendering
# @flag --force-seekable
# @option --force-window <value>                   Choices: no yes immediate (default: no)
# @flag --force-window-position
# @option --fps <value>                            Double (0 to any) (default: 0.000)
# @option --framedrop <value>                      Choices: no vo decoder decoder+vo (default: vo)
# @option --frames <value>                         Choices: all (or an integer) (0 to 2147483647) (default: all)
# @option --fs <value>                             alias for fullscreen
# @option --fs-screen <value>                      Choices: all current (or an integer) (0 to 32) (default: current)
# @option --fs-screen-name <value>                 String (default: )
# @flag --fullscreen
# @option --gamma <value>                          Float (-100 to 100) (default: 0.000)
# @option --gamut-mapping-mode <value>             Choices: auto clip perceptual relative saturation absolute desaturate darken warn linear (default: auto)
# @option --gapless-audio <value>                  Choices: no yes weak (default: weak)
# @option --geometry <value>                       Window geometry (default: )
# @option --glsl-shader <value>                    alias for --glsl-shaders-append (CLI/config files only)
# @option --glsl-shader-opts-add <value>
# @option --glsl-shader-opts-append <value>
# @option --glsl-shader-opts-set <value>
# @option --glsl-shader-opts-remove <value>
# @option --glsl-shaders-add <value>
# @option --glsl-shaders-append <value>
# @option --glsl-shaders-clr <value>
# @option --glsl-shaders-del <value>
# @option --glsl-shaders-pre <value>
# @option --glsl-shaders-set <value>
# @option --glsl-shaders-toggle <value>
# @option --glsl-shaders-remove <value>
# @option --gpu-api <value>                        String (default: )
# @option --gpu-context <value>                    String (default: )
# @flag --gpu-debug
# @option --gpu-dumb-mode <value>                  Choices: auto yes no (default: auto)
# @option --gpu-hwdec-interop <value>              String (default: auto)
# @flag --gpu-shader-cache
# @option --gpu-shader-cache-dir <file>            String (default: ) [file]
# @flag --gpu-sw
# @option --gpu-tex-pad-x <value>                  Integer (0 to 4096) (default: 0)
# @option --gpu-tex-pad-y <value>                  Integer (0 to 4096) (default: 0)
# @option --h <value>                              String (default: ) [not in config files]
# @option --hdr-compute-peak <value>               Choices: auto yes no (default: auto)
# @option --hdr-contrast-recovery <value>          Float (0 to 2) (default: 0.000)
# @option --hdr-contrast-smoothness <value>        Float (1 to 100) (default: 3.500)
# @option --hdr-peak-decay-rate <value>            Float (1 to 1000) (default: 100.000)
# @option --hdr-scene-threshold-high <value>       Float (0 to 20) (default: 10.000)
# @option --hdr-scene-threshold-low <value>        Float (0 to 20) (default: 5.500)
# @option --help <value>                           String (default: ) [not in config files]
# @flag --hidpi-window-scale
# @option --hls-bitrate <value>                    Choices: no min max (or an integer) (0 to 2147483647) (default: max)
# @option --hr-seek <value>                        Choices: no absolute yes always default (default: default)
# @option --hr-seek-demuxer-offset <value>         Float (default: 0.000)
# @flag --hr-seek-framedrop
# @option --http-header-fields-add <value>
# @option --http-header-fields-append <value>
# @option --http-header-fields-clr <value>
# @option --http-header-fields-del <value>
# @option --http-header-fields-pre <value>
# @option --http-header-fields-set <value>
# @option --http-header-fields-toggle <value>
# @option --http-header-fields-remove <value>
# @option --http-proxy <value>                     String (default: )
# @option --hue <value>                            Float (-100 to 100) (default: 0.000)
# @option --hwdec-add <value>
# @option --hwdec-append <value>
# @option --hwdec-clr <value>
# @option --hwdec-del <value>
# @option --hwdec-pre <value>
# @option --hwdec-set <value>
# @option --hwdec-toggle <value>
# @option --hwdec-remove <value>
# @option --hwdec-codecs[h264|vc1|hevc|vp8|vp9|av1|prores] <value>  String
# @option --hwdec-extra-frames <value>             Integer (0 to 256) (default: 6)
# @option --hwdec-image-format <value>             Image format (default: no)
# @option --icc-3dlut-size <value>                 String (default: 64x64x64)
# @flag --icc-cache
# @option --icc-cache-dir <file>                   String (default: ) [file]
# @option --icc-force-contrast <value>             Choices: no inf (or an integer) (0 to 1000000) (default: no)
# @option --icc-intent <value>                     Integer (default: 1)
# @option --icc-profile <file>                     String (default: ) [file]
# @flag --icc-profile-auto
# @flag --icc-use-luma
# @option --idle <value>                           Choices: no once yes (default: no)
# @flag --ignore-path-in-watch-later-config
# @option --image-display-duration <value>         Double (0 to inf) (default: 1.000)
# @option --image-lut <file>                       String (default: ) [file]
# @option --image-lut-type <value>                 Choices: auto native normalized conversion (default: auto)
# @flag --image-subs-video-resolution
# @option --include <file>                         String (default: ) [file]
# @option --index <value>                          Choices: default recreate (default: default)
# @flag --initial-audio-sync
# @option --input-ar-delay <value>                 Integer (default: 200)
# @option --input-ar-rate <value>                  Integer (default: 40)
# @flag --input-builtin-bindings
# @option --input-cmdlist <value>                  Print [not in config files]
# @option --input-conf <file>                      String (default: ) [file]
# @flag --input-cursor
# @flag --input-cursor-passthrough
# @flag --input-default-bindings
# @option --input-doubleclick-time <value>         Integer (0 to 1000) (default: 300)
# @flag --input-gamepad
# @option --input-ipc-client <value>               String (default: )
# @option --input-ipc-server <file>                String (default: ) [file]
# @option --input-key-fifo-size <value>            Integer (2 to 65000) (default: 7)
# @option --input-keylist <value>                  Print [not in config files]
# @flag --input-media-keys
# @flag --input-right-alt-gr
# @flag --input-terminal
# @flag --input-test
# @flag --input-vo-keyboard
# @flag --interpolation
# @flag --interpolation-preserve
# @option --interpolation-threshold <value>        Float (default: 0.010)
# @flag --inverse-tone-mapping
# @option --keep-open <value>                      Choices: no yes always (default: no)
# @flag --keep-open-pause
# @flag --keepaspect
# @flag --keepaspect-window
# @option --lavfi-complex <value>                  String (default: )
# @option --length <value>                         Relative time or percent position (default: none)
# @flag --linear-downscaling
# @flag --linear-upscaling
# @flag --list-options
# @flag --list-properties
# @option --list-protocols <value>                 Print [not in config files]
# @option --load-auto-profiles <value>             Choices: no yes auto (default: auto)
# @flag --load-osd-console
# @flag --load-scripts
# @flag --load-stats-overlay
# @flag --load-unsafe-playlists
# @option --log-file <file>                        String (default: ) [file]
# @option --loop <value>                           alias for loop-file
# @option --loop-file <value>                      Choices: no inf yes (or an integer) (0 to 10000) (default: no)
# @option --loop-playlist <value>                  Choices: no inf yes force (or an integer) (1 to 10000) (default: no)
# @option --lut <file>                             String (default: ) [file]
# @option --lut-type <value>                       Choices: auto native normalized conversion (default: auto)
# @option --mc <value>                             Float (0 to 100) (default: -1.000)
# @flag --merge-files
# @option --metadata-codepage <value>              String (default: utf-8)
# @option --mf-fps <value>                         Double (default: 1.000)
# @option --mf-type <value>                        String (default: )
# @option --monitoraspect <value>                  Float (0 to 9) (default: 0.000)
# @option --monitorpixelaspect <value>             Float (0.03125 to 32) (default: 1.000)
# @flag --msg-color
# @option --msg-level <value>                      Output verbosity levels (default: )
# @flag --msg-module
# @flag --msg-time
# @option --mute <value>                           Choices: no auto yes (default: no)
# @flag --native-fs
# @flag --native-keyrepeat
# @option --network-timeout <value>                Double (0 to any) (default: 60.000)
# @option --o <file>                               String (default: ) [not in config files] [file]
# @option --oac <value>                            String (default: )
# @option --oacopts-add <value>
# @option --oacopts-append <value>
# @option --oacopts-set <value>
# @option --oacopts-remove <value>
# @flag --ocopy-metadata
# @option --of <value>                             String (default: )
# @option --ofopts-add <value>
# @option --ofopts-append <value>
# @option --ofopts-set <value>
# @option --ofopts-remove <value>
# @flag --on-all-workspaces
# @flag --ontop
# @option --ontop-level <value>                    Choices: window system desktop (or an integer) (0 to 2147483647) (default: window)
# @flag --openal-direct-channels
# @option --openal-num-buffers <value>             Integer (2 to 128) (default: 4)
# @option --openal-num-samples <value>             Integer (256 to 32768) (default: 8192)
# @option --opengl-check-pattern-a <value>         Integer (default: 0)
# @option --opengl-check-pattern-b <value>         Integer (default: 0)
# @option --opengl-early-flush <value>             Choices: no yes auto (default: no)
# @option --opengl-es <value>                      Choices: auto yes no (default: auto)
# @flag --opengl-glfinish
# @flag --opengl-pbo
# @flag --opengl-rectangle-textures
# @option --opengl-swapinterval <value>            Integer (default: 1)
# @flag --opengl-waitvsync
# @flag --orawts
# @flag --ordered-chapters
# @option --ordered-chapters-files <file>          String (default: ) [file]
# @option --oremove-metadata-add <value>
# @option --oremove-metadata-append <value>
# @option --oremove-metadata-clr <value>
# @option --oremove-metadata-del <value>
# @option --oremove-metadata-pre <value>
# @option --oremove-metadata-set <value>
# @option --oremove-metadata-toggle <value>
# @option --oremove-metadata-remove <value>
# @flag --osc
# @option --osd-align-x <value>                    Choices: left center right (default: left)
# @option --osd-align-y <value>                    Choices: top center bottom (default: top)
# @option --osd-back-color <value>                 Color (default: ♯00000000)
# @flag --osd-bar
# @option --osd-bar-align-x <value>                Float (-1 to 1) (default: 0.000)
# @option --osd-bar-align-y <value>                Float (-1 to 1) (default: 0.500)
# @option --osd-bar-h <value>                      Float (0.1 to 50) (default: 3.125)
# @option --osd-bar-w <value>                      Float (1 to 100) (default: 75.000)
# @option --osd-blur <value>                       Float (0 to 20) (default: 0.000)
# @flag --osd-bold
# @option --osd-border-color <value>               Color (default: ♯FF000000)
# @option --osd-border-size <value>                Float (default: 3.000)
# @option --osd-color <value>                      Color (default: ♯FFFFFFFF)
# @option --osd-duration <value>                   Integer (0 to 3600000) (default: 1000)
# @option --osd-font <value>                       String (default: sans-serif)
# @option --osd-font-provider <value>              Choices: auto none fontconfig (default: auto)
# @option --osd-font-size <value>                  Float (1 to 9000) (default: 55.000)
# @option --osd-fonts-dir <file>                   String (default: ) [file]
# @flag --osd-fractions
# @flag --osd-italic
# @option --osd-justify <value>                    Choices: auto left center right (default: auto)
# @option --osd-level <value>                      Choices: 0 1 2 3 (default: 1)
# @option --osd-margin-x <value>                   Integer (0 to 300) (default: 25)
# @option --osd-margin-y <value>                   Integer (0 to 600) (default: 22)
# @option --osd-msg1 <value>                       String (default: )
# @option --osd-msg2 <value>                       String (default: )
# @option --osd-msg3 <value>                       String (default: )
# @option --osd-on-seek <value>                    Choices: no bar msg msg-bar (default: bar)
# @option --osd-playing-msg <value>                String (default: )
# @option --osd-playing-msg-duration <value>       Integer (0 to 3600000) (default: 0)
# @option --osd-scale <value>                      Float (0 to 100) (default: 1.000)
# @flag --osd-scale-by-window
# @option --osd-shadow-color <value>               Color (default: ♯80F0F0F0)
# @option --osd-shadow-offset <value>              Float (default: 0.000)
# @option --osd-spacing <value>                    Float (-10 to 10) (default: 0.000)
# @option --osd-status-msg <value>                 String (default: )
# @option --oset-metadata-add <value>
# @option --oset-metadata-append <value>
# @option --oset-metadata-set <value>
# @option --oset-metadata-remove <value>
# @option --ovc <value>                            String (default: )
# @option --ovcopts-add <value>
# @option --ovcopts-append <value>
# @option --ovcopts-set <value>
# @option --ovcopts-remove <value>
# @option --override-display-fps <value>           Double (0 to any) (default: 0.000)
# @option --panscan <value>                        Float (0 to 1) (default: 0.000)
# @flag --pause
# @option --pipewire-buffer <value>                Choices: native (or an integer) (1 to 2000) (default: native)
# @option --pipewire-remote <value>                String (default: )
# @option --pipewire-volume-mode <value>           Choices: channel global (default: channel)
# @option --play-dir <value>                       Choices: forward + backward - (default: forward)
# @option --player-operation-mode <value>          Choices: cplayer pseudo-gui (default: cplayer)
# @option --playlist <file>                        String (default: ) [not in config files] [file]
# @option --playlist-start <value>                 Choices: auto no (or an integer) (0 to 2147483647) (default: auto)
# @flag --prefetch-playlist
# @option --profile-add <value>
# @option --profile-append <value>
# @option --profile-clr <value>
# @option --profile-del <value>
# @option --profile-pre <value>
# @option --profile-set <value>
# @option --profile-toggle <value>
# @option --profile-remove <value>
# @flag --pulse-allow-suspended
# @option --pulse-buffer <value>                   Choices: native (or an integer) (1 to 2000) (default: 100)
# @option --pulse-host <value>                     String (default: )
# @flag --pulse-latency-hacks
# @flag --quiet
# @flag --rar-list-all-volumes
# @flag --really-quiet
# @flag --rebase-start-time
# @option --referrer <value>                       String (default: )
# @option --replaygain <value>                     Choices: no track album (default: no)
# @flag --replaygain-clip
# @option --replaygain-fallback <value>            Float (-200 to 60) (default: 0.000)
# @option --replaygain-preamp <value>              Float (-150 to 150) (default: 0.000)
# @option --reset-on-next-file-add <value>
# @option --reset-on-next-file-append <value>
# @option --reset-on-next-file-clr <value>
# @option --reset-on-next-file-del <value>
# @option --reset-on-next-file-pre <value>
# @option --reset-on-next-file-set <value>
# @option --reset-on-next-file-toggle <value>
# @option --reset-on-next-file-remove <value>
# @flag --resume-playback
# @flag --resume-playback-check-mtime
# @option --rtsp-transport <value>                 Choices: lavf udp tcp http udp_multicast (default: tcp)
# @option --saturation <value>                     Float (-100 to 100) (default: 0.000)
# @flag --save-position-on-quit
# @option --scale <value>                          String (default: bilinear)
# @option --scale-antiring <value>                 Float (0 to 1) (default: 0.000)
# @option --scale-blur <value>                     Float (default: 0.000)
# @option --scale-clamp <value>                    Float (0 to 1) (default: 0.000)
# @option --scale-cutoff <value>                   Float (0 to 1) (default: 0.001)
# @option --scale-param1 <value>                   Float (default: default)
# @option --scale-param2 <value>                   Float (default: default)
# @option --scale-radius <value>                   Float (0.5 to 16) (default: 0.000)
# @option --scale-taper <value>                    Float (0 to 1) (default: 0.000)
# @option --scale-wblur <value>                    Float (default: 0.000)
# @option --scale-window <value>                   String (default: )
# @option --scale-wparam <value>                   Float (default: default)
# @option --scale-wtaper <value>                   Float (0 to 1) (default: 0.000)
# @option --scaler-lut-size <value>                Integer (4 to 10) (default: 6)
# @flag --scaler-resizes-only
# @option --screen <value>                         Choices: default (or an integer) (0 to 32) (default: default)
# @option --screen-name <value>                    String (default: )
# @option --screenshot-avif-encoder <value>        String (default: libaom-av1)
# @option --screenshot-avif-opts-add <value>
# @option --screenshot-avif-opts-append <value>
# @option --screenshot-avif-opts-set <value>
# @option --screenshot-avif-opts-remove <value>
# @option --screenshot-avif-pixfmt <value>         String (default: yuv420p)
# @option --screenshot-directory <file>            String (default: ) [file]
# @option --screenshot-format <value>              Choices: jpg jpeg png webp jxl avif (default: jpg)
# @flag --screenshot-high-bit-depth
# @option --screenshot-jpeg-quality <value>        Integer (0 to 100) (default: 90)
# @flag --screenshot-jpeg-source-chroma
# @option --screenshot-jxl-distance <value>        Double (0 to 15) (default: 1.000)
# @option --screenshot-jxl-effort <value>          Integer (1 to 9) (default: 4)
# @option --screenshot-png-compression <value>     Integer (0 to 9) (default: 7)
# @option --screenshot-png-filter <value>          Integer (0 to 5) (default: 5)
# @flag --screenshot-sw
# @flag --screenshot-tag-colorspace
# @option --screenshot-template <value>            String (default: mpv-shot%n)
# @option --screenshot-webp-compression <value>    Integer (0 to 6) (default: 4)
# @flag --screenshot-webp-lossless
# @option --screenshot-webp-quality <value>        Integer (0 to 100) (default: 75)
# @option --script <value>                         alias for --scripts-append (CLI/config files only)
# @option --script-opts-add <value>
# @option --script-opts-append <value>
# @option --script-opts-set <value>
# @option --script-opts-remove <value>
# @option --scripts-add <value>
# @option --scripts-append <value>
# @option --scripts-clr <value>
# @option --scripts-del <value>
# @option --scripts-pre <value>
# @option --scripts-set <value>
# @option --scripts-toggle <value>
# @option --scripts-remove <value>
# @option --sdl-buflen <value>                     Float (default: 0.000)
# @flag --sdl-sw
# @flag --sdl-switch-mode
# @flag --sdl-vsync
# @option --secondary-sid <value>                  Choices: no auto (or an integer) (0 to 8190) (default: no)
# @flag --secondary-sub-visibility
# @option --sharpen <value>                        Float (default: 0.000)
# @option --show-profile <value>                   String (default: ) [not in config files]
# @flag --shuffle
# @option --sid <value>                            Choices: no auto (or an integer) (0 to 8190) (default: auto)
# @option --sigmoid-center <value>                 Float (0 to 1) (default: 0.750)
# @option --sigmoid-slope <value>                  Float (1 to 20) (default: 6.500)
# @flag --sigmoid-upscaling
# @option --slang-add <value>
# @option --slang-append <value>
# @option --slang-clr <value>
# @option --slang-del <value>
# @option --slang-pre <value>
# @option --slang-set <value>
# @option --slang-toggle <value>
# @option --slang-remove <value>
# @flag --snap-window
# @option --speed <value>                          Double (0.01 to 100) (default: 1.000)
# @option --spirv-compiler <value>                 Choices: auto shaderc (default: auto)
# @option --sstep <value>                          Double (0 to any) (default: 0.000)
# @option --start <value>                          Relative time or percent position (default: none)
# @flag --stop-playback-on-init-failure
# @option --stop-screensaver <value>               Choices: no yes always (default: yes)
# @option --stream-buffer-size <value>             ByteSize (4096 to 536870912) (default: 128.000 KiB)
# @option --stream-dump <file>                     String (default: ) [file]
# @option --stream-lavf-o-add <value>
# @option --stream-lavf-o-append <value>
# @option --stream-lavf-o-set <value>
# @option --stream-lavf-o-remove <value>
# @option --stream-record <value>                  String (default: )
# @flag --stretch-dvd-subs
# @flag --stretch-image-subs-to-screen
# @option --sub <value>                            alias for sid
# @option --sub-align-x <value>                    Choices: left center right (default: center)
# @option --sub-align-y <value>                    Choices: top center bottom (default: bottom)
# @flag --sub-ass
# @flag --sub-ass-force-margins
# @option --sub-ass-force-style-add <value>
# @option --sub-ass-force-style-append <value>
# @option --sub-ass-force-style-clr <value>
# @option --sub-ass-force-style-del <value>
# @option --sub-ass-force-style-pre <value>
# @option --sub-ass-force-style-set <value>
# @option --sub-ass-force-style-toggle <value>
# @option --sub-ass-force-style-remove <value>
# @option --sub-ass-hinting <value>                Choices: none light normal native (default: none)
# @flag --sub-ass-justify
# @option --sub-ass-line-spacing <value>           Float (-1000 to 1000) (default: 0.000)
# @option --sub-ass-override <value>               Choices: no yes force scale strip (default: yes)
# @flag --sub-ass-scale-with-window
# @option --sub-ass-shaper <value>                 Choices: simple complex (default: complex)
# @option --sub-ass-styles <file>                  String (default: ) [file]
# @flag --sub-ass-vsfilter-aspect-compat
# @flag --sub-ass-vsfilter-blur-compat
# @option --sub-ass-vsfilter-color-compat <value>  Choices: no basic full force-601 (default: basic)
# @option --sub-auto <value>                       Choices: no exact fuzzy all (default: exact)
# @option --sub-back-color <value>                 Color (default: ♯00000000)
# @option --sub-blur <value>                       Float (0 to 20) (default: 0.000)
# @flag --sub-bold
# @option --sub-border-color <value>               Color (default: ♯FF000000)
# @option --sub-border-size <value>                Float (default: 3.000)
# @flag --sub-clear-on-seek
# @option --sub-codepage <value>                   String (default: auto)
# @option --sub-color <value>                      Color (default: ♯FFFFFFFF)
# @flag --sub-create-cc-track
# @option --sub-delay <value>                      Float (default: 0.000)
# @option --sub-demuxer <value>                    String (default: )
# @option --sub-file <value>                       alias for --sub-files-append (CLI/config files only)
# @option --sub-file-paths-add <value>
# @option --sub-file-paths-append <value>
# @option --sub-file-paths-clr <value>
# @option --sub-file-paths-del <value>
# @option --sub-file-paths-pre <value>
# @option --sub-file-paths-set <value>
# @option --sub-file-paths-toggle <value>
# @option --sub-file-paths-remove <value>
# @option --sub-files-add <value>
# @option --sub-files-append <value>
# @option --sub-files-clr <value>
# @option --sub-files-del <value>
# @option --sub-files-pre <value>
# @option --sub-files-set <value>
# @option --sub-files-toggle <value>
# @option --sub-files-remove <value>
# @option --sub-filter-jsre-add <value>
# @option --sub-filter-jsre-append <value>
# @option --sub-filter-jsre-clr <value>
# @option --sub-filter-jsre-del <value>
# @option --sub-filter-jsre-pre <value>
# @option --sub-filter-jsre-set <value>
# @option --sub-filter-jsre-toggle <value>
# @option --sub-filter-jsre-remove <value>
# @option --sub-filter-regex-add <value>
# @option --sub-filter-regex-append <value>
# @option --sub-filter-regex-clr <value>
# @option --sub-filter-regex-del <value>
# @option --sub-filter-regex-pre <value>
# @option --sub-filter-regex-set <value>
# @option --sub-filter-regex-toggle <value>
# @option --sub-filter-regex-remove <value>
# @flag --sub-filter-regex-enable
# @flag --sub-filter-regex-plain
# @flag --sub-filter-regex-warn
# @flag --sub-filter-sdh
# @flag --sub-filter-sdh-harder
# @flag --sub-fix-timing
# @option --sub-font <value>                       String (default: sans-serif)
# @option --sub-font-provider <value>              Choices: auto none fontconfig (default: auto)
# @option --sub-font-size <value>                  Float (1 to 9000) (default: 55.000)
# @option --sub-fonts-dir <file>                   String (default: ) [file]
# @option --sub-forced-only <value>                Choices: auto no yes (default: auto)
# @option --sub-fps <value>                        Float (default: 0.000)
# @option --sub-gauss <value>                      Float (0 to 3) (default: 0.000)
# @flag --sub-gray
# @flag --sub-italic
# @option --sub-justify <value>                    Choices: auto left center right (default: auto)
# @option --sub-margin-x <value>                   Integer (0 to 300) (default: 25)
# @option --sub-margin-y <value>                   Integer (0 to 600) (default: 22)
# @flag --sub-past-video-end
# @option --sub-pos <value>                        Integer (0 to 150) (default: 100)
# @option --sub-scale <value>                      Float (0 to 100) (default: 1.000)
# @flag --sub-scale-by-window
# @flag --sub-scale-with-window
# @option --sub-shadow-color <value>               Color (default: ♯80F0F0F0)
# @option --sub-shadow-offset <value>              Float (default: 0.000)
# @option --sub-spacing <value>                    Float (-10 to 10) (default: 0.000)
# @option --sub-speed <value>                      Float (default: 1.000)
# @flag --sub-use-margins
# @flag --sub-visibility
# @option --subs-fallback <value>                  Choices: no default yes (default: no)
# @flag --subs-fallback-forced
# @flag --subs-with-matching-audio
# @option --swapchain-depth <value>                Integer (1 to 8) (default: 3)
# @flag --sws-allow-zimg
# @flag --sws-bitexact
# @option --sws-cgb <value>                        Float (0 to 100) (default: 0.000)
# @option --sws-chs <value>                        Integer (default: 0)
# @option --sws-cs <value>                         Float (-100 to 100) (default: 0.000)
# @option --sws-cvs <value>                        Integer (default: 0)
# @flag --sws-fast
# @option --sws-lgb <value>                        Float (0 to 100) (default: 0.000)
# @option --sws-ls <value>                         Float (-100 to 100) (default: 0.000)
# @option --sws-scaler <value>                     Choices: fast-bilinear bilinear bicubic x point area bicublin gauss sinc lanczos spline (default: lanczos)
# @flag --target-colorspace-hint
# @option --target-contrast <value>                Choices: auto inf (or an integer) (10 to 1000000) (default: auto)
# @option --target-lut <file>                      String (default: ) [file]
# @option --target-peak <value>                    Choices: auto (or an integer) (10 to 10000) (default: auto)
# @option --target-prim <value>                    Choices: auto bt.601-525 bt.601-625 bt.709 bt.2020 bt.470m apple adobe prophoto cie1931 dci-p3 display-p3 v-gamut s-gamut ebu3213 film-c aces-ap0 aces-ap1 (default: auto)
# @option --target-trc <value>                     Choices: auto bt.1886 srgb linear gamma1.8 gamma2.0 gamma2.2 gamma2.4 gamma2.6 gamma2.8 prophoto pq hlg v-log s-log1 s-log2 st428 (default: auto)
# @flag --taskbar-progress
# @option --teletext-page <value>                  Integer (1 to 999) (default: 100)
# @flag --temporal-dither
# @option --temporal-dither-period <value>         Integer (1 to 128) (default: 1)
# @option --term-osd <value>                       Choices: force auto no (default: auto)
# @flag --term-osd-bar
# @option --term-osd-bar-chars <value>             String (default: [-+-])
# @option --term-playing-msg <value>               String (default: )
# @option --term-status-msg <value>                String (default: )
# @option --term-title <value>                     String (default: )
# @flag --terminal
# @option --title <value>                          String (default: ${?media-title:${media-title}}${!media-title:No file} - mpv)
# @option --tls-ca-file <file>                     String (default: ) [file]
# @option --tls-cert-file <file>                   String (default: ) [file]
# @option --tls-key-file <file>                    String (default: ) [file]
# @flag --tls-verify
# @option --tone-mapping <value>                   Choices: auto clip mobius reinhard hable gamma linear spline bt.2390 bt.2446a st2094-40 st2094-10 (default: auto)
# @option --tone-mapping-max-boost <value>         Float (1 to 10) (default: 1.000)
# @option --tone-mapping-mode <value>              Choices: auto rgb max hybrid luma (default: auto)
# @option --tone-mapping-param <value>             Float (default: default)
# @flag --tone-mapping-visualize
# @flag --track-auto-selection
# @option --tscale <value>                         String (default: mitchell)
# @option --tscale-antiring <value>                Float (0 to 1) (default: 0.000)
# @option --tscale-blur <value>                    Float (default: 0.000)
# @option --tscale-clamp <value>                   Float (0 to 1) (default: 1.000)
# @option --tscale-cutoff <value>                  Float (0 to 1) (default: 0.000)
# @option --tscale-param1 <value>                  Float (default: default)
# @option --tscale-param2 <value>                  Float (default: default)
# @option --tscale-radius <value>                  Float (0.5 to 16) (default: 0.000)
# @option --tscale-taper <value>                   Float (0 to 1) (default: 0.000)
# @option --tscale-wblur <value>                   Float (default: 0.000)
# @option --tscale-window <value>                  String (default: )
# @option --tscale-wparam <value>                  Float (default: default)
# @option --tscale-wtaper <value>                  Float (0 to 1) (default: 0.000)
# @flag --untimed
# @flag --use-embedded-icc-profile
# @flag --use-filedir-conf
# @option --user-agent <value>                     String (default: libmpv)
# @flag --v
# @option --V <value>                              Print [not in config files]
# @option --vaapi-device <value>                   String (default: /dev/dri/renderD128)
# @option --vd <value>                             String (default: )
# @flag --vd-lavc-assume-old-x264
# @flag --vd-lavc-bitexact
# @flag --vd-lavc-check-hw-profile
# @option --vd-lavc-dr <value>                     Choices: auto no yes (default: auto)
# @flag --vd-lavc-fast
# @option --vd-lavc-film-grain <value>             Choices: auto cpu gpu (default: auto)
# @option --vd-lavc-framedrop <value>              Choices: none default nonref bidir nonkey all (default: nonref)
# @option --vd-lavc-o-add <value>
# @option --vd-lavc-o-append <value>
# @option --vd-lavc-o-set <value>
# @option --vd-lavc-o-remove <value>
# @flag --vd-lavc-show-all
# @option --vd-lavc-skipframe <value>              Choices: none default nonref bidir nonkey all (default: default)
# @option --vd-lavc-skipidct <value>               Choices: none default nonref bidir nonkey all (default: default)
# @option --vd-lavc-skiploopfilter <value>         Choices: none default nonref bidir nonkey all (default: default)
# @option --vd-lavc-software-fallback <value>      Choices: no yes (or an integer) (1 to 2147483647) (default: 3)
# @option --vd-lavc-threads <value>                Integer (0 to any) (default: 0)
# @flag --vd-queue-enable
# @option --vd-queue-max-bytes <value>             ByteSize (0 to 4.6116860184274e+18) (default: 512.000 MiB)
# @option --vd-queue-max-samples <value>           Integer64 (0 to any) (default: 50)
# @option --vd-queue-max-secs <value>              Double (0 to any) (default: 2.000)
# @option --version <value>                        Print [not in config files]
# @option --vf-add <value>
# @option --vf-append <value>
# @option --vf-clr <value>
# @option --vf-del <value>
# @option --vf-help <value>
# @option --vf-pre <value>
# @option --vf-set <value>
# @option --vf-toggle <value>
# @option --vf-remove <value>
# @option --vf-defaults-add <value>
# @option --vf-defaults-append <value>
# @option --vf-defaults-clr <value>
# @option --vf-defaults-del <value>
# @option --vf-defaults-help <value>
# @option --vf-defaults-pre <value>
# @option --vf-defaults-set <value>
# @option --vf-defaults-toggle <value>
# @option --vf-defaults-remove <value>
# @option --vid <value>                            Choices: no auto (or an integer) (0 to 8190) (default: auto)
# @option --video <value>                          alias for vid
# @option --video-align-x <value>                  Float (-1 to 1) (default: 0.000)
# @option --video-align-y <value>                  Float (-1 to 1) (default: 0.000)
# @option --video-aspect-method <value>            Choices: bitstream container (default: container)
# @option --video-aspect-override <value>          Aspect (-1 to 10) (default: -1.000)
# @option --video-backward-batch <value>           Integer (0 to 1024) (default: 1)
# @option --video-backward-overlap <value>         Choices: auto (or an integer) (0 to 1024) (default: auto)
# @flag --video-latency-hacks
# @option --video-margin-ratio-bottom <value>      Float (0 to 1) (default: 0.000)
# @option --video-margin-ratio-left <value>        Float (0 to 1) (default: 0.000)
# @option --video-margin-ratio-right <value>       Float (0 to 1) (default: 0.000)
# @option --video-margin-ratio-top <value>         Float (0 to 1) (default: 0.000)
# @flag --video-osd
# @option --video-output-levels <value>            Choices: auto limited full (default: auto)
# @option --video-pan-x <value>                    Float (-3 to 3) (default: 0.000)
# @option --video-pan-y <value>                    Float (-3 to 3) (default: 0.000)
# @option --video-reversal-buffer <value>          ByteSize (0 to 4.6116860184274e+18) (default: 1.000 GiB)
# @option --video-rotate <value>                   Choices: no (or an integer) (0 to 359) (default: 0)
# @option --video-scale-x <value>                  Float (0 to 10000) (default: 1.000)
# @option --video-scale-y <value>                  Float (0 to 10000) (default: 1.000)
# @option --video-sync <value>                     Choices: audio display-resample display-resample-vdrop display-resample-desync display-tempo display-adrop display-vdrop display-desync desync (default: audio)
# @option --video-sync-max-audio-change <value>    Double (0 to 1) (default: 0.125)
# @option --video-sync-max-factor <value>          Integer (1 to 10) (default: 5)
# @option --video-sync-max-video-change <value>    Double (0 to any) (default: 1.000)
# @option --video-timing-offset <value>            Double (0 to 1) (default: 0.050)
# @option --video-unscaled <value>                 Choices: no yes downscale-big (default: no)
# @option --video-zoom <value>                     Float (-20 to 20) (default: 0.000)
# @option --vlang-add <value>
# @option --vlang-append <value>
# @option --vlang-clr <value>
# @option --vlang-del <value>
# @option --vlang-pre <value>
# @option --vlang-set <value>
# @option --vlang-toggle <value>
# @option --vlang-remove <value>
# @option --vo-add <value>
# @option --vo-append <value>
# @option --vo-clr <value>
# @option --vo-del <value>
# @option --vo-help <value>
# @option --vo-pre <value>
# @option --vo-set <value>
# @option --vo-toggle <value>
# @option --vo-remove <value>
# @option --vo-image-avif-encoder <value>          String (default: libaom-av1)
# @option --vo-image-avif-opts-add <value>
# @option --vo-image-avif-opts-append <value>
# @option --vo-image-avif-opts-set <value>
# @option --vo-image-avif-opts-remove <value>
# @option --vo-image-avif-pixfmt <value>           String (default: yuv420p)
# @option --vo-image-format <value>                Choices: jpg jpeg png webp jxl avif (default: jpg)
# @flag --vo-image-high-bit-depth
# @option --vo-image-jpeg-quality <value>          Integer (0 to 100) (default: 90)
# @flag --vo-image-jpeg-source-chroma
# @option --vo-image-jxl-distance <value>          Double (0 to 15) (default: 1.000)
# @option --vo-image-jxl-effort <value>            Integer (1 to 9) (default: 4)
# @option --vo-image-outdir <file>                 String (default: ) [file]
# @option --vo-image-png-compression <value>       Integer (0 to 9) (default: 7)
# @option --vo-image-png-filter <value>            Integer (0 to 5) (default: 5)
# @flag --vo-image-tag-colorspace
# @option --vo-image-webp-compression <value>      Integer (0 to 6) (default: 4)
# @flag --vo-image-webp-lossless
# @option --vo-image-webp-quality <value>          Integer (0 to 100) (default: 75)
# @flag --vo-kitty-alt-screen
# @option --vo-kitty-cols <value>                  Integer (default: 0)
# @flag --vo-kitty-config-clear
# @option --vo-kitty-height <value>                Integer (default: 0)
# @option --vo-kitty-left <value>                  Integer (default: 0)
# @option --vo-kitty-rows <value>                  Integer (default: 0)
# @option --vo-kitty-top <value>                   Integer (default: 0)
# @flag --vo-kitty-use-shm
# @option --vo-kitty-width <value>                 Integer (default: 0)
# @option --vo-null-fps <value>                    Double (0 to 10000) (default: 0.000)
# @flag --vo-tct-256
# @option --vo-tct-algo <value>                    Choices: plain half-blocks (default: half-blocks)
# @option --vo-tct-height <value>                  Integer (default: 0)
# @option --vo-tct-width <value>                   Integer (default: 0)
# @flag --vo-vaapi-scaled-osd
# @option --vo-vaapi-scaling <value>               Choices: default fast hq nla (default: default)
# @flag --vo-vdpau-chroma-deint
# @option --vo-vdpau-colorkey <value>              Color (default: ♯FF020507)
# @flag --vo-vdpau-composite-detect
# @option --vo-vdpau-denoise <value>               Float (0 to 1) (default: 0.000)
# @flag --vo-vdpau-force-yuv
# @option --vo-vdpau-fps <value>                   Float (default: 0.000)
# @option --vo-vdpau-hqscaling <value>             Integer (0 to 9) (default: 0)
# @option --vo-vdpau-output-surfaces <value>       Integer (2 to 15) (default: 3)
# @flag --vo-vdpau-pullup
# @option --vo-vdpau-queuetime-fs <value>          Integer (default: 50)
# @option --vo-vdpau-queuetime-windowed <value>    Integer (default: 50)
# @option --vo-vdpau-sharpen <value>               Float (-1 to 1) (default: 0.000)
# @option --volume <value>                         Float (-1 to 1000) (default: 100.000)
# @option --volume-max <value>                     Float (100 to 1000) (default: 130.000)
# @flag --vulkan-async-compute
# @flag --vulkan-async-transfer
# @option --vulkan-device <value>                  String (default: )
# @option --vulkan-display-display <value>         Integer (default: 0)
# @option --vulkan-display-mode <value>            Integer (default: 0)
# @option --vulkan-display-plane <value>           Integer (default: 0)
# @option --vulkan-queue-count <value>             Integer (1 to 8) (default: 1)
# @option --vulkan-swap-mode <value>               Choices: auto fifo fifo-relaxed mailbox immediate (default: auto)
# @option --watch-later-directory <file>           String (default: ) [file]
# @option --watch-later-options-add <value>
# @option --watch-later-options-append <value>
# @option --watch-later-options-clr <value>
# @option --watch-later-options-del <value>
# @option --watch-later-options-pre <value>
# @option --watch-later-options-set <value>
# @option --watch-later-options-toggle <value>
# @option --watch-later-options-remove <value>
# @option --wayland-app-id <value>                 String (default: mpv)
# @option --wayland-configure-bounds <value>       Choices: auto no yes (default: auto)
# @option --wayland-content-type <value>           Choices: auto none photo video game (default: auto)
# @flag --wayland-disable-vsync
# @option --wayland-edge-pixels-pointer <value>    Integer (0 to 2147483647) (default: 16)
# @option --wayland-edge-pixels-touch <value>      Integer (0 to 2147483647) (default: 32)
# @option --wid <value>                            Integer64 (default: -1)
# @flag --window-dragging
# @flag --window-maximized
# @flag --window-minimized
# @option --window-scale <value>                   Double (0.001 to 100) (default: 1.000)
# @flag --write-filename-in-watch-later-config
# @option --x11-bypass-compositor <value>          Choices: no yes fs-only never (default: fs-only)
# @option --x11-name <value>                       String (default: )
# @option --x11-netwm <value>                      Choices: auto no yes (default: auto)
# @option --x11-present <value>                    Choices: no auto yes (default: auto)
# @option --xv-adaptor <value>                     Integer (-1 to any) (default: -1)
# @option --xv-buffers <value>                     Integer (1 to 10) (default: 2)
# @option --xv-ck <value>                          Choices: use set cur (default: cur)
# @option --xv-ck-method <value>                   Choices: none bg man auto (default: man)
# @option --xv-colorkey <value>                    Integer (default: 65280)
# @option --xv-port <value>                        Integer (0 to any) (default: 0)
# @flag --ytdl
# @option --ytdl-format <value>                    String (default: )
# @option --ytdl-raw-options-add <value>
# @option --ytdl-raw-options-append <value>
# @option --ytdl-raw-options-set <value>
# @option --ytdl-raw-options-remove <value>
# @option --zimg-dither <value>                    Choices: no ordered random error-diffusion (default: random)
# @flag --zimg-fast
# @option --zimg-scaler <value>                    Choices: point bilinear bicubic spline16 spline36 lanczos (default: lanczos)
# @option --zimg-scaler-chroma <value>             Choices: point bilinear bicubic spline16 spline36 lanczos (default: bilinear)
# @option --zimg-scaler-chroma-param-a <value>     Double (default: default)
# @option --zimg-scaler-chroma-param-b <value>     Double (default: default)
# @option --zimg-scaler-param-a <value>            Double (default: default)
# @option --zimg-scaler-param-b <value>            Double (default: default)
# @option --zimg-threads <value>                   Choices: auto (or an integer) (1 to 64) (default: auto)
# @arg files*

command eval "$(argc --argc-eval "$0" "$@")"