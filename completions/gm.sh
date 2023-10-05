#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -help    print help

# {{ gm animate
# @cmd animate a sequence of images
# @option -authenticate <value>               decrypt image with this password
# @flag -backdrop                             display image centered on a backdrop
# @option -colormap[shared|private] <type>    Shared or Private
# @option -colors <value>                     preferred number of colors in the image
# @option -colorspace[`_choice_colorspace`] <type>  alternate image colorspace
# @option -crop <geometry>                    preferred size and location of the cropped image
# @option -debug <events>                     display copious debugging information
# @option -define <values>                    Coder/decoder specific options
# @option -delay <value>                      display the next image after pausing
# @option -density <geometry>                 horizontal and vertical density of the image
# @option -depth <value>                      image depth
# @option -display <server>                   display image to this X server
# @flag -dither                               apply Floyd/Steinberg error diffusion to image
# @option -gamma <value>                      level of gamma correction
# @option -geometry <geometry>                preferred size and location of the Image window
# @flag -help                                 print program options
# @option -interlace[None|Line|Plane|Partition] <type>  None, Line, Plane, or Partition
# @option -limit <type> <value>               Disk, File, Map, Memory, Pixels, Width, Height or Threads resource limit
# @option -log <format>                       format of debugging information
# @flag -matte                                store matte channel if the image has one
# @option -map[`_choice_map`] <type>          display image using this Standard Colormap
# @flag -monitor                              show progress indication
# @flag -monochrome                           transform image to black and white
# @flag -noop                                 do not apply options to image
# @flag -pause                                seconds to pause before reanimating
# @option -remote <command>                   execute a command in a remote display process
# @option -rotate <degrees>                   apply Paeth rotation to the image
# @option -sampling-factor <HxV[,...]>        horizontal and vertical sampling factors
# @option -scenes <range>                     image scene range
# @option -size <geometry>                    width and height of image
# @option -treedepth <value>                  color tree depth
# @flag -trim                                 trim image edges
# @option -type[`_choice_type`] <type>        image type
# @flag -verbose                              print detailed information about the image
# @flag -version                              print version information
# @option -visual[`_choice_visual`] <type>    display image using this visual type
# @option -virtual-pixel[`_choice_virtual_pixel`] <method>  Constant, Edge, Mirror, or Tile
# @option -window <id>                        display image to background of this window
# @flag -borderwidth
# @flag -font
# @flag -foreground
# @flag -iconGeometry
# @flag -iconic
# @flag -name
# @flag -mattecolor
# @flag -shared-memory
# @flag -title.
# @arg file
animate() {
    :;
}
# }} gm animate

# {{ gm batch
# @cmd issue multiple commands in interactive or batch mode
# @option -echo <on|off>             echo command back to standard out, default is off
# @flag -escape                      unix|windows force use Unix or Windows escape format for command line argument parsing, default is platform dependent
# @option -fail <text>               when feedback is on, output the designated text if the command returns error, default is 'FAIL'
# @option -feedback <on|off>         print text (see -pass and -fail options) feedback after each command to indicate the result, default is off
# @flag -help                        print program options
# @option -pass <text>               when feedback is on, output the designated text if the command executed successfully, default is 'PASS'
# @option -prompt <text>             use the given text as command prompt.
# @option -stop-on-error <on|off>    when turned on, batch execution quits prematurely when any command returns error
# @arg file <file|->
batch() {
    :;
}
# }} gm batch

# {{ gm benchmark
# @cmd benchmark one of the other commands
# @flag -concurrent               run multiple commands in parallel
# @option -duration <duration>    duration to run benchmark (in seconds)
# @option -iterations <loops>     number of command iterations per benchmark
# @option -rawcsv[threads|iterations|user_time|elapsed_time]  CSV output
# @option -stepthreads <step>     step benchmark with increasing number of threads
# @arg command*
benchmark() {
    :;
}
# }} gm benchmark

# {{ gm compare
# @cmd compare two images
# @option -authenticate <value>                   decrypt image with this password
# @flag -auto-orient                              orient (rotate) images so they are upright
# @option -colorspace[`_choice_colorspace`] <type>  alternate image colorspace
# @option -compress[`_choice_compress`] <type>    image compression type
# @option -debug <events>                         display copious debugging information
# @option -define <values>                        coder/decoder specific options
# @option -density <geometry>                     horizontal and vertical density of the image
# @option -depth <value>                          image depth
# @option -display <server>                       get image or font from this X server
# @option -endian[MSB|LSB|Native] <type>          multibyte word order (LSB, MSB, or Native)
# @option -file <filename>                        write difference image to this file
# @flag -help                                     print program options
# @option -highlight-color <color>                color to use when annotating difference pixels
# @option -highlight-style[Assign|Threshold|Tint|XOR] <style>  pixel highlight style
# @option -interlace[None|Line|Plane|Partition] <type>  None, Line, Plane, or Partition
# @option -limit <type> <value>                   Disk, File, Map, Memory, Pixels, Width, Height or Threads resource limit
# @option -log <format>                           format of debugging information
# @flag -matte                                    store matte channel if the image has one
# @flag -maximum-error                            maximum total difference before returning error
# @option -metric[MAE|MSE|PAE|PSNR|RMSE]          comparison metric
# @flag -monitor                                  show progress indication
# @option -sampling-factor <HxV[,...]>            horizontal and vertical sampling factors
# @option -size <geometry>                        width and height of image
# @option -type[`_choice_type`] <type>            image type
# @flag -verbose                                  print detailed information about the image
# @flag -version                                  print version information
# @arg reference
# @arg compare
compare() {
    :;
}
# }} gm compare

# {{ gm composite
# @cmd composite images together
# @option -affine <matrix>                        affine transform matrix
# @option -authenticate <value>                   decrypt image with this password
# @option -blue-primary <point>                   chomaticity blue primary point
# @option -colors <value>                         preferred number of colors in the image
# @option -colorspace[`_choice_colorspace`] <type>  alternate image colorspace
# @option -comment <string>                       annotate image with comment
# @option -compose[`_choice_compose`] <operator>  composite operator
# @option -compress[`_choice_compress`] <type>    image compression type
# @option -debug <events>                         display copious debugging information
# @option -define <values>                        Coder/decoder specific options
# @option -density <geometry>                     horizontal and vertical density of the image
# @option -depth <value>                          image depth
# @option -displace <geometry>                    shift image pixels defined by a displacement map
# @option -display <server>                       get image or font from this X server
# @option -dispose[`_choice_dispose`] <method>    Undefined, None, Background, Previous
# @option -dissolve <value>                       dissolve the two images a given percent
# @flag -dither                                   apply Floyd/Steinberg error diffusion to image
# @option -encoding[`_choice_encoding`] <type>    text encoding type
# @option -endian[MSB|LSB|Native] <type>          multibyte word order (LSB, MSB, or Native)
# @option -filter[`_choice_filter`] <type>        use this filter when resizing an image
# @option -font <name>                            render text with this font
# @option -geometry <geometry>                    location of the composite image
# @option -gravity <type>                         which direction to gravitate towards
# @flag -green-primary                            point chomaticity green primary point
# @flag -help                                     print program options
# @option -interlace[None|Line|Plane|Partition] <type>  None, Line, Plane, or Partition
# @option -label <name>                           ssign a label to an image
# @option -limit <type> <value>                   Disk, File, Map, Memory, Pixels, Width, Height or Threads resource limit
# @option -log <format>                           format of debugging information
# @flag -matte                                    store matte channel if the image has one
# @flag -monitor                                  show progress indication
# @flag -monochrome                               transform image to black and white
# @flag -negate                                   replace every pixel with its complementary color
# @option -page[`_choie_page`] <geometry>         size and location of an image canvas
# @option -profile <filename>                     add ICM or IPTC information profile to image
# @option -quality <value>                        JPEG/MIFF/PNG compression level
# @option -recolor <matrix>                       apply a color translation matrix to image channels
# @option -red-primary <point>                    chomaticity red primary point
# @option -rotate <degrees>                       apply Paeth rotation to the image
# @option -repage <geometry>                      adjust current page offsets by geometry
# @option -resize <geometry>                      resize the image
# @option -sampling-factor <HxV[,...]>            horizontal and vertical sampling factors
# @option -scene <value>                          image scene number
# @flag -set                                      attribute value set image attribute
# @option -sharpen <geometry>                     sharpen the image
# @option -size <geometry>                        width and height of image
# @option -stegano <offset>                       hide watermark within an image
# @flag -stereo                                   combine two image to create a stereo anaglyph
# @flag -strip                                    strip all profiles and text attributes from image
# @option -thumbnail <geometry>                   resize the image (optimized for thumbnails)
# @flag -tile                                     repeat composite operation across image
# @flag -transform                                affine transform image
# @option -treedepth <value>                      color tree depth
# @option -type[`_choice_type`] <type>            image type
# @option -units[Undefined|PixelsPerInch|PixelsPerCentimeter] <type>  PixelsPerInch, PixelsPerCentimeter, or Undefined
# @option -unsharp <geometry>                     sharpen the image
# @flag -verbose                                  print detailed information about the image
# @flag -version                                  print version information
# @option -virtual-pixel[`_choice_virtual_pixel`] <method>  Constant, Edge, Mirror, or Tile
# @option -watermark <geometry>                   percent brightness and saturation of a watermark
# @option -white-point <point>                    chomaticity white point
# @option -write <filename>                       write image to this file
# @arg image
# @arg composite
composite() {
    :;
}
# }} gm composite

# {{ gm conjure
# @cmd execute a Magick Scripting Language (MSL) XML script
# @option -debug <events>    display copious debugging information
# @flag -help                print program options
# @option -log <format>      format of debugging information
# @flag -verbose             print detailed information about the image
# @flag -version             print version information
# @arg file
conjure() {
    :;
}
# }} gm conjure

# {{ gm convert
# @cmd convert an image or sequence of images
# @flag -adjoin                                   join images into a single multi-image file
# @option -affine <matrix>                        affine transform matrix
# @flag -antialias                                remove pixel-aliasing
# @flag -append                                   append an image sequence
# @option -asc-cdl <spec>                         apply ASC CDL transform
# @option -authenticate <value>                   decrypt image with this password
# @flag -auto-orient                              orient (rotate) image so it is upright
# @flag -average                                  average an image sequence
# @option -background <color>                     background color
# @option -black-threshold <value>                pixels below the threshold become black
# @option -blue-primary <point>                   chomaticity blue primary point
# @option -blur <geometry>                        blur the image
# @option -border <geometry>                      surround image with a border of color
# @option -bordercolor <color>                    border color
# @option -box <color>                            set the color of the annotation bounding box
# @option -channel <type>                         extract a particular color channel from image
# @option -charcoal <radius>                      simulate a charcoal drawing
# @option -chop <geometry>                        remove pixels from the image interior
# @flag -clip                                     apply first clipping path if the image has one
# @flag -clippath                                 apply named clipping path if the image has one
# @flag -coalesce                                 merge a sequence of images
# @option -colorize <value>                       colorize the image with the fill color
# @option -colors <value>                         preferred number of colors in the image
# @option -colorspace[`_choice_colorspace`] <type>  alternate image colorspace
# @option -comment <string>                       annotate image with comment
# @option -compose[`_choice_compose`] <operator>  composite operator
# @option -compress[`_choice_compress`] <type>    image compression type
# @flag -contrast                                 enhance or reduce the image contrast
# @option -convolve <kernel>                      convolve image with the specified convolution kernel
# @option -crop <geometry>                        preferred size and location of the cropped image
# @option -cycle <amount>                         cycle the image colormap
# @option -debug <events>                         display copious debugging information
# @flag -deconstruct                              break down an image sequence into constituent parts
# @option -define <values>                        Coder/decoder specific options
# @option -delay <value>                          display the next image after pausing
# @option -density <geometry>                     horizontal and vertical density of the image
# @option -depth <value>                          image depth
# @flag -despeckle                                reduce the speckles within an image
# @option -display <server>                       get image or font from this X server
# @option -dispose[`_choice_dispose`] <method>    Undefined, None, Background, Previous
# @flag -dither                                   apply Floyd/Steinberg error diffusion to image
# @option -draw <string>                          annotate the image with a graphic primitive
# @option -edge <radius>                          apply a filter to detect edges in the image
# @option -emboss <radius>                        emboss an image
# @option -encoding[`_choice_encoding`] <type>    text encoding type
# @option -endian[MSB|LSB|Native] <type>          multibyte word order (LSB, MSB, or Native)
# @flag -enhance                                  apply a digital filter to enhance a noisy image
# @flag -equalize                                 perform histogram equalization to an image
# @flag -extent                                   composite image on background color canvas image
# @option -fill <color>                           color to use when filling a graphic primitive
# @option -filter[`_choice_filter`] <type>        use this filter when resizing an image
# @flag -flatten                                  flatten a sequence of images
# @flag -flip                                     flip image in the vertical direction
# @flag -flop                                     flop image in the horizontal direction
# @option -font <name>                            render text with this font
# @option -format <"string">                      output formatted image info for 'info:' format
# @option -frame <geometry>                       surround image with an ornamental border
# @option -fuzz <distance>                        colors within this distance are considered equal
# @option -gamma <value>                          level of gamma correction
# @option -gaussian <geometry>                    gaussian blur an image
# @option -geometry <geometry>                    perferred size or location of the image
# @flag -green-primary                            point chomaticity green primary point
# @option -gravity <type>                         horizontal and vertical text/object placement
# @option -hald-clut <clut>                       apply a Hald CLUT to the image
# @flag -help                                     print program options
# @option -implode <amount>                       implode image pixels about the center
# @option -intent[Absolute|Perceptual|Relative|Saturation] <type>  Absolute, Perceptual, Relative, or Saturation
# @option -interlace[None|Line|Plane|Partition] <type>  None, Line, Plane, or Partition
# @option -label <name>                           assign a label to an image
# @option -lat <geometry>                         local adaptive thresholding
# @option -level <value>                          adjust the level of image contrast
# @option -limit <type> <value>                   Disk, File, Map, Memory, Pixels, Width, Height or Threads resource limit
# @option -linewidth <width>                      the line width for subsequent draw operations
# @option -list[Color|Delegate|Format|Magic|Module|Resource|Type] <type>  Color, Delegate, Format, Magic, Module, Resource, or Type
# @option -log <format>                           format of debugging information
# @option -loop <iterations>                      add Netscape loop extension to your GIF animation
# @flag -magnify                                  interpolate image to double size
# @option -map[`_choice_map`] <filename>          transform image colors to match this set of colors
# @option -mask <filename>                        set the image clip mask
# @flag -matte                                    store matte channel if the image has one
# @option -mattecolor <color>                     specify the color to be used with the -frame option
# @option -median <radius>                        apply a median filter to the image
# @flag -minify                                   interpolate the image to half size
# @option -modulate <value>                       vary the brightness, saturation, and hue
# @flag -monitor                                  show progress indication
# @flag -monochrome                               transform image to black and white
# @option -morph <value>                          morph an image sequence
# @flag -mosaic                                   create a mosaic from an image sequence
# @option -motion-blur <radiusxsigma+angle>       simulate motion blur
# @flag -negate                                   replace every pixel with its complementary color
# @flag -noop                                     do not apply options to image
# @option -noise[Uniform|Gaussian|Multiplicative|Impulse|Laplacian|Poisson|Random] <radius>  add or reduce noise in an image
# @flag -normalize                                transform image to span the full range of colors
# @option -opaque <color>                         change this color to the fill color
# @option -operator <channel> <operator> <rvalue>  apply a mathematical or bitwise operator to channel
# @flag -ordered-dither                           channeltype NxN ordered dither the image
# @option -orient <orientation>                   set image orientation attribute
# @option -page[`_choie_page`] <geometry>         size and location of an image canvas
# @option -paint <radius>                         simulate an oil painting
# @flag -ping                                     efficiently determine image attributes
# @option -pointsize <value>                      font point size
# @option -preview[`_choice_preview`] <type>      image preview type
# @option -profile <filename>                     add ICM or IPTC information profile to image
# @option -quality <value>                        JPEG/MIFF/PNG compression level
# @option -raise <value>                          lighten/darken image edges to create a 3-D effect
# @flag -random-threshold                         channeltype LOWxHIGH random threshold the image
# @option -recolor <matrix>                       apply a color translation matrix to image channels
# @option -red-primary <point>                    chomaticity red primary point
# @option -region <geometry>                      apply options to a portion of the image
# @flag -render                                   render vector graphics
# @option -resample <geometry>                    resample to horizontal and vertical resolution
# @option -repage <geometry>                      adjust current page offsets by geometry
# @option -resize <geometry>                      resize the image
# @option -roll <geometry>                        roll an image vertically or horizontally
# @option -rotate <degrees>                       apply Paeth rotation to the image
# @option -sample <geometry>                      scale image with pixel sampling
# @option -sampling-factor <HxV[,...]>            horizontal and vertical sampling factors
# @option -scale <geometry>                       scale the image
# @option -scene <value>                          image scene number
# @option -seed <value>                           pseudo-random number generator seed value
# @option -segment <values>                       segment an image
# @flag -set                                      attribute value set image attribute
# @option -shade <degrees>                        shade the image using a distant light source
# @option -sharpen <geometry>                     sharpen the image
# @option -shave <geometry>                       shave pixels from the image edges
# @option -shear <geometry>                       slide one edge of the image along the X or Y axis
# @option -size <geometry>                        width and height of image
# @option -solarize <threshold>                   negate all pixels above the threshold level
# @option -spread <amount>                        displace image pixels by a random amount
# @option -stroke <color>                         graphic primitive stroke color
# @option -strokewidth <value>                    graphic primitive stroke width
# @flag -strip                                    strip all profiles and text attributes from image
# @option -swirl <degrees>                        swirl image pixels about the center
# @option -texture <filename>                     name of texture to tile onto the image background
# @option -threshold <value>                      threshold the image
# @option -thumbnail <geometry>                   resize the image (optimized for thumbnails)
# @option -tile <filename>                        tile image when filling a graphic primitive
# @flag -transform                                affine transform image
# @option -transparent <color>                    make this color transparent within the image
# @option -treedepth <value>                      color tree depth
# @flag -trim                                     trim image edges
# @option -type[`_choice_type`] <type>            image type
# @option -undercolor <color>                     annotation bounding box color
# @option -units[Undefined|PixelsPerInch|PixelsPerCentimeter] <type>  PixelsPerInch, PixelsPerCentimeter, or Undefined
# @option -unsharp <geometry>                     sharpen the image
# @flag -verbose                                  print detailed information about the image
# @flag -version                                  print version information
# @flag -view                                     FlashPix viewing transforms
# @option -virtual-pixel[`_choice_virtual_pixel`] <method>  Constant, Edge, Mirror, or Tile
# @option -wave <geometry>                        alter an image along a sine wave
# @option -white-point <point>                    chomaticity white point
# @option -white-threshold <value>                pixels above the threshold become white
# @option -write <filename>                       write image to this file
# @arg file
convert() {
    :;
}
# }} gm convert

# {{ gm display
# @cmd display an image on a workstation running X
# @option -authenticate <value>                   decrypt image with this password
# @flag -backdrop                                 display image centered on a backdrop
# @option -border <geometry>                      surround image with a border of color
# @option -colormap[shared|private] <type>        Shared or Private
# @option -colors <value>                         preferred number of colors in the image
# @option -colorspace[`_choice_colorspace`] <type>  alternate image colorspace
# @option -comment <string>                       annotate image with comment
# @option -compress[`_choice_compress`] <type>    image compression type
# @flag -contrast                                 enhance or reduce the image contrast
# @option -crop <geometry>                        preferred size and location of the cropped image
# @option -debug <events>                         display copious debugging information
# @option -define <values>                        Coder/decoder specific options
# @option -delay <value>                          display the next image after pausing
# @option -density <geometry>                     horizontal and vertical density of the image
# @option -depth <value>                          image depth
# @flag -despeckle                                reduce the speckles within an image
# @option -display <server>                       display image to this X server
# @option -dispose[`_choice_dispose`] <method>    Undefined, None, Background, Previous
# @flag -dither                                   apply Floyd/Steinberg error diffusion to image
# @option -edge <factor>                          apply a filter to detect edges in the image
# @option -endian[MSB|LSB|Native] <type>          multibyte word order (LSB, MSB, or Native)
# @flag -enhance                                  apply a digital filter to enhance a noisy image
# @option -filter[`_choice_filter`] <type>        use this filter when resizing an image
# @flag -flip                                     flip image in the vertical direction
# @flag -flop                                     flop image in the horizontal direction
# @option -frame <geometry>                       surround image with an ornamental border
# @option -gamma <value>                          level of gamma correction
# @option -geometry <geometry>                    preferred size and location of the Image window
# @flag -help                                     print program options
# @flag -immutable                                displayed image cannot be modified
# @option -interlace[None|Line|Plane|Partition] <type>  None, Line, Plane, or Partition
# @option -label <name>                           assign a label to an image
# @option -limit <type> <value>                   Disk, File, Map, Memory, Pixels, Width, Height or Threads resource limit
# @option -log <format>                           format of debugging information
# @option -map[`_choice_map`] <type>              display image using this Standard Colormap
# @flag -matte                                    store matte channel if the image has one
# @flag -monitor                                  show progress indication
# @flag -monochrome                               transform image to black and white
# @flag -negate                                   replace every pixel with its complementary color
# @flag -noop                                     do not apply options to image
# @option -page[`_choie_page`] <geometry>         size and location of an image canvas
# @option -quality <value>                        JPEG/MIFF/PNG compression level
# @option -raise <value>                          lighten/darken image edges to create a 3-D effect
# @option -remote <command>                       execute a command in an remote display process
# @option -roll <geometry>                        roll an image vertically or horizontally
# @option -rotate <degrees>                       apply Paeth rotation to the image
# @option -sample <geometry>                      scale image with pixel sampling
# @option -sampling-factor <HxV[,...]>            horizontal and vertical sampling factors
# @option -scenes <range>                         image scene range
# @option -segment <value>                        segment an image
# @flag -set                                      attribute value set image attribute
# @option -sharpen <geometry>                     sharpen the image
# @option -size <geometry>                        width and height of image
# @option -texture <filename>                     name of texture to tile onto the image background
# @option -treedepth <value>                      color tree depth
# @flag -trim                                     trim image edges
# @option -type[`_choice_type`] <type>            image type
# @option -update <seconds>                       detect when image file is modified and redisplay
# @flag -verbose                                  print detailed information about the image
# @flag -version                                  print version information
# @option -visual[`_choice_visual`] <type>        display image using this visual type
# @option -virtual-pixel[`_choice_virtual_pixel`] <method>  Constant, Edge, Mirror, or Tile
# @option -window <id>                            display image to background of this window
# @option -window_group <id>                      exit program when this window id is destroyed
# @option -write <filename>                       write image to a file
# @flag -borderwidth
# @flag -font
# @flag -foreground
# @flag -iconGeometry
# @flag -iconic
# @flag -mattecolor
# @flag -name
# @flag -shared-memory
# @flag -usePixmap
# @flag -title.
# @arg file
display() {
    :;
}
# }} gm display

# {{ gm identify
# @cmd describe an image or image sequence
# @option -debug <events>                 display copious debugging information
# @option -define <values>                Coder/decoder specific options
# @option -density <geometry>             horizontal and vertical density of the image
# @option -depth <value>                  image depth
# @option -format <"string">              output formatted image characteristics
# @flag -help                             print program options
# @option -interlace[None|Line|Plane|Partition] <type>  None, Line, Plane, or Partition
# @option -limit <type> <value>           Disk, File, Map, Memory, Pixels, Width, Height or Threads resource limit
# @option -log <format>                   format of debugging information
# @flag -monitor                          show progress indication
# @flag -ping                             efficiently determine image attributes
# @option -sampling-factor <HxV[,...]>    horizontal and vertical sampling factors
# @option -size <geometry>                width and height of image
# @flag -verbose                          print detailed information about the image
# @flag -version                          print version information
# @option -virtual-pixel[`_choice_virtual_pixel`] <method>  Constant, Edge, Mirror, or Tile
# @arg file
identify() {
    :;
}
# }} gm identify

# {{ gm import
# @cmd capture an application or X server screen
# @flag -adjoin                                   join images into a single multi-image file
# @flag -border                                   include image borders in the output image
# @option -colors <value>                         preferred number of colors in the image
# @option -colorspace[`_choice_colorspace`] <type>  alternate image colorspace
# @option -comment <string>                       annotate image with comment
# @option -compress[`_choice_compress`] <type>    image compression type
# @option -crop <geometry>                        preferred size and location of the cropped image
# @option -debug <events>                         display copious debugging information
# @option -define <values>                        Coder/decoder specific options
# @option -delay <value>                          display the next image after pausing
# @option -density <geometry>                     horizontal and vertical density of the image
# @option -depth <value>                          image depth
# @flag -descend                                  obtain image by descending window hierarchy
# @option -display <server>                       X server to contact
# @option -dispose[`_choice_dispose`] <method>    Undefined, None, Background, Previous
# @flag -dither                                   apply Floyd/Steinberg error diffusion to image
# @flag -frame                                    include window manager frame
# @option -encoding[`_choice_encoding`] <type>    text encoding type
# @option -endian[MSB|LSB|Native] <type>          multibyte word order (LSB, MSB, or Native)
# @option -geometry <geometry>                    perferred size or location of the image
# @option -interlace[None|Line|Plane|Partition] <type>  None, Line, Plane, or Partition
# @flag -help                                     print program options
# @option -label <name>                           assign a label to an image
# @option -limit <type> <value>                   Disk, File, Map, Memory, Pixels, Width, Height or Threads resource limit
# @option -log <format>                           format of debugging information
# @flag -monitor                                  show progress indication
# @flag -monochrome                               transform image to black and white
# @flag -negate                                   replace every pixel with its complementary color
# @option -page[`_choie_page`] <geometry>         size and location of an image canvas
# @option -pause <value>                          seconds delay between snapshots
# @option -pointsize <value>                      font point size
# @option -quality <value>                        JPEG/MIFF/PNG compression level
# @option -resize <geometry>                      resize the image
# @option -rotate <degrees>                       apply Paeth rotation to the image
# @option -sampling-factor <HxV[,...]>            horizontal and vertical sampling factors
# @option -scene <value>                          image scene number
# @flag -screen                                   select image from root window
# @flag -set                                      attribute value set image attribute
# @flag -silent                                   operate silently, i.e.
# @option -snaps <value>                          number of screen snapshots
# @option -thumbnail <geometry>                   resize the image (optimized for thumbnails)
# @option -transparent <color>                    make this color transparent within the image
# @option -treedepth <value>                      color tree depth
# @flag -trim                                     trim image edges
# @option -type[`_choice_type`] <type>            image type
# @flag -verbose                                  print detailed information about the image
# @flag -version                                  print version information
# @option -virtual-pixel[`_choice_virtual_pixel`] <method>  Constant, Edge, Mirror, or Tile
# @option -window <id>                            select window with this id or name
# @arg file
import() {
    :;
}
# }} gm import

# {{ gm mogrify
# @cmd transform an image or sequence of images
# @option -affine <matrix>                        affine transform matrix
# @flag -antialias                                remove pixel-aliasing
# @option -asc-cdl <spec>                         apply ASC CDL transform
# @option -authenticate <value>                   decrypt image with this password
# @flag -auto-orient                              orient (rotate) image so it is upright
# @option -background <color>                     background color
# @option -black-threshold <value>                pixels below the threshold become black
# @option -blue-primary <point>                   chomaticity blue primary point
# @option -blur <radius>                          blur the image
# @option -border <geometry>                      surround image with a border of color
# @option -bordercolor <color>                    border color
# @option -box <color>                            set the color of the annotation bounding box
# @option -channel <type>                         extract a particular color channel from image
# @option -charcoal <radius>                      simulate a charcoal drawing
# @option -chop <geometry>                        remove pixels from the image interior
# @option -colorize <value>                       colorize the image with the fill color
# @option -colors <value>                         preferred number of colors in the image
# @option -colorspace[`_choice_colorspace`] <type>  alternate image colorspace
# @option -comment <string>                       annotate image with comment
# @option -compose[`_choice_compose`] <operator>  composite operator
# @option -compress[`_choice_compress`] <type>    image compression type
# @flag -contrast                                 enhance or reduce the image contrast
# @option -convolve <kernel>                      convolve image with the specified convolution kernel
# @flag -create-directories                       create output directories if required
# @option -crop <geometry>                        preferred size and location of the cropped image
# @option -cycle <amount>                         cycle the image colormap
# @option -debug <events>                         display copious debugging information
# @option -define <values>                        Coder/decoder specific options
# @option -delay <value>                          display the next image after pausing
# @option -density <geometry>                     horizontal and vertical density of the image
# @option -depth <value>                          image depth
# @flag -despeckle                                reduce the speckles within an image
# @option -display <server>                       get image or font from this X server
# @option -dispose[`_choice_dispose`] <method>    Undefined, None, Background, Previous
# @flag -dither                                   apply Floyd/Steinberg error diffusion to image
# @option -draw <string>                          annotate the image with a graphic primitive
# @option -edge <radius>                          apply a filter to detect edges in the image
# @option -emboss <radius>                        emboss an image
# @option -encoding[`_choice_encoding`] <type>    text encoding type
# @option -endian[MSB|LSB|Native] <type>          multibyte word order (LSB, MSB, or Native)
# @flag -enhance                                  apply a digital filter to enhance a noisy image
# @flag -equalize                                 perform histogram equalization to an image
# @flag -extent                                   composite image on background color canvas image
# @option -filter[`_choice_filter`] <type>        use this filter when resizing an image
# @flag -flip                                     flip image in the vertical direction
# @flag -flop                                     flop image in the horizontal direction
# @option -font <name>                            render text with this font
# @option -format <type>                          image format type
# @option -frame <geometry>                       surround image with an ornamental border
# @option -fuzz <distance>                        colors within this distance are considered equal
# @option -gamma <value>                          level of gamma correction
# @option -gaussian <geometry>                    gaussian blur an image
# @option -geometry <geometry>                    perferred size or location of the image
# @option -gravity <type>                         horizontal and vertical text/object placement
# @flag -green-primary                            point chomaticity green primary point
# @option -implode <amount>                       implode image pixels about the center
# @option -interlace[None|Line|Plane|Partition] <type>  None, Line, Plane, or Partition
# @option -hald-clut <clut>                       apply a Hald CLUT to the image
# @flag -help                                     print program options
# @option -label <name>                           assign a label to an image
# @option -lat <geometry>                         local adaptive thresholding
# @option -level <value>                          adjust the level of image contrast
# @option -limit <type> <value>                   Disk, File, Map, Memory, Pixels, Width, Height or Threads resource limit
# @option -linewidth <width>                      the line width for subsequent draw operations
# @option -list[Color|Delegate|Format|Magic|Module|Resource|Type] <type>  Color, Delegate, Format, Magic, Module, Resource, or Type
# @option -log <format>                           format of debugging information
# @option -loop <iterations>                      add Netscape loop extension to your GIF animation
# @flag -magnify                                  interpolate image to double size
# @option -map[`_choice_map`] <filename>          transform image colors to match this set of colors
# @option -mask <filename>                        set the image clip mask
# @flag -matte                                    store matte channel if the image has one
# @option -mattecolor <color>                     specify the color to be used with the -frame option
# @option -median <radius>                        apply a median filter to the image
# @flag -minify                                   interpolate the image to half size
# @option -modulate <value>                       vary the brightness, saturation, and hue
# @flag -monitor                                  show progress indication
# @flag -monochrome                               transform image to black and white
# @option -motion-blur <radiusxsigma+angle>       simulate motion blur
# @flag -negate                                   replace every pixel with its complementary color
# @flag -noop                                     do not apply options to image
# @option -noise[Uniform|Gaussian|Multiplicative|Impulse|Laplacian|Poisson|Random] <radius>  add or reduce noise in an image
# @flag -normalize                                transform image to span the full range of colors
# @option -opaque <color>                         change this color to the fill color
# @option -operator <channel> <operator> <rvalue>  apply a mathematical or bitwise operator to channel
# @flag -ordered-dither                           channeltype NxN ordered dither the image
# @option -orient <orientation>                   set image orientation attribute
# @option -output-directory <directory>           write output files to directory
# @option -page[`_choie_page`] <geometry>         size and location of an image canvas
# @option -paint <radius>                         simulate an oil painting
# @option -fill <color>                           color for annotating or changing opaque color
# @option -pointsize <value>                      font point size
# @option -profile <filename>                     add ICM or IPTC information profile to image
# @flag -preserve-timestamp                       preserve original timestamps of the file
# @option -quality <value>                        JPEG/MIFF/PNG compression level
# @option -raise <value>                          lighten/darken image edges to create a 3-D effect
# @flag -random-threshold                         channeltype LOWxHIGH random threshold the image
# @option -recolor <matrix>                       apply a color translation matrix to image channels
# @option -red-primary <point>                    chomaticity red primary point
# @option -region <geometry>                      apply options to a portion of the image
# @flag -render                                   render vector graphics
# @option -resample <geometry>                    resample to horizontal and vertical resolution
# @option -repage <geometry>                      adjust current page offsets by geometry
# @option -resize <geometry>                      perferred size or location of the image
# @option -roll <geometry>                        roll an image vertically or horizontally
# @option -rotate <degrees>                       apply Paeth rotation to the image
# @option -sample <geometry>                      scale image with pixel sampling
# @option -sampling-factor <HxV[,...]>            horizontal and vertical sampling factors
# @option -scale <geometry>                       scale the image
# @option -scene <number>                         image scene number
# @option -seed <value>                           pseudo-random number generator seed value
# @option -segment <values>                       segment an image
# @flag -set                                      attribute value set image attribute
# @option -shade <degrees>                        shade the image using a distant light source
# @option -sharpen <radius>                       sharpen the image
# @option -shave <geometry>                       shave pixels from the image edges
# @option -shear <geometry>                       slide one edge of the image along the X or Y axis
# @option -size <geometry>                        width and height of image
# @option -solarize <threshold>                   negate all pixels above the threshold level
# @option -spread <amount>                        displace image pixels by a random amount
# @flag -strip                                    strip all profiles and text attributes from image
# @option -stroke <color>                         graphic primitive stroke color
# @option -strokewidth <value>                    graphic primitive stroke width
# @option -swirl <degrees>                        swirl image pixels about the center
# @option -texture <filename>                     name of texture to tile onto the image background
# @option -threshold <value>                      threshold the image
# @option -thumbnail <geometry>                   resize the image (optimized for thumbnails)
# @option -tile <filename>                        tile image when filling a graphic primitive
# @flag -transform                                affine transform image
# @option -transparent <color>                    make this color transparent within the image
# @option -treedepth <value>                      color tree depth
# @flag -trim                                     trim image edges
# @option -type[`_choice_type`] <type>            image type
# @option -undercolor <color>                     annotation bounding box color
# @option -units[Undefined|PixelsPerInch|PixelsPerCentimeter] <type>  PixelsPerInch, PixelsPerCentimeter, or Undefined
# @option -unsharp <geometry>                     sharpen the image
# @flag -verbose                                  print detailed information about the image
# @flag -version                                  print version information
# @flag -view                                     FlashPix viewing transforms
# @option -virtual-pixel[`_choice_virtual_pixel`] <method>  Constant, Edge, Mirror, or Tile
# @option -wave <geometry>                        alter an image along a sine wave
# @option -white-point <point>                    chomaticity white point
# @option -white-threshold <value>                pixels above the threshold become white
# @arg file
mogrify() {
    :;
}
# }} gm mogrify

# {{ gm montage
# @cmd create a composite image (in a grid) from separate images
# @flag -adjoin                                   join images into a single multi-image file
# @option -affine <matrix>                        affine transform matrix
# @option -authenticate <value>                   decrypt image with this password
# @option -background <color>                     background color
# @option -blue-primary <point>                   chomaticity blue primary point
# @option -blur <factor>                          apply a filter to blur the image
# @option -bordercolor <color>                    border color
# @option -borderwidth <geometry>                 border width
# @option -colors <value>                         preferred number of colors in the image
# @option -colorspace[`_choice_colorspace`] <type>  alternate image colorsapce
# @option -comment <string>                       annotate image with comment
# @option -compose[`_choice_compose`] <operator>  composite operator
# @option -compress[`_choice_compress`] <type>    image compression type
# @option -crop <geometry>                        preferred size and location of the cropped image
# @option -debug <events>                         display copious debugging information
# @option -define <values>                        Coder/decoder specific options
# @option -density <geometry>                     horizontal and vertical density of the image
# @option -depth <value>                          image depth
# @option -display <server>                       query font from this X server
# @option -dispose[`_choice_dispose`] <method>    Undefined, None, Background, Previous
# @flag -dither                                   apply Floyd/Steinberg error diffusion to image
# @option -draw <string>                          annotate the image with a graphic primitive
# @option -encoding[`_choice_encoding`] <type>    text encoding type
# @option -endian[MSB|LSB|Native] <type>          multibyte word order (LSB, MSB, or Native)
# @option -fill <color>                           color to use when filling a graphic primitive
# @option -filter[`_choice_filter`] <type>        use this filter when resizing an image
# @flag -flip                                     flip image in the vertical direction
# @flag -flop                                     flop image in the horizontal direction
# @option -font <name>                            font to use when annotating with text
# @option -format <string>                        output formatted image characteristics
# @option -frame <geometry>                       surround image with an ornamental border
# @option -gamma <value>                          level of gamma correction
# @option -geometry <geometry>                    preferred tile and border sizes
# @option -gravity <direction>                    which direction to gravitate towards
# @flag -green-primary                            point chomaticity green primary point
# @flag -help                                     print program options
# @option -interlace[None|Line|Plane|Partition] <type>  None, Line, Plane, or Partition
# @option -label <name>                           assign a label to an image
# @option -limit <type> <value>                   Disk, File, Map, Memory, Pixels, Width, Height or Threads resource limit
# @option -log <format>                           format of debugging information
# @flag -matte                                    store matte channel if the image has one
# @option -mattecolor <color>                     color to be used with the -frame option
# @option -mode <type>                            Frame, Unframe, or Concatenate
# @flag -monitor                                  show progress indication
# @flag -monochrome                               transform image to black and white
# @flag -noop                                     do not apply options to image
# @option -page[`_choie_page`] <geometry>         size and location of an image canvas
# @option -pointsize <value>                      font point size
# @option -quality <value>                        JPEG/MIFF/PNG compression level
# @option -red-primary <point>                    chomaticity red primary point
# @option -repage <geometry>                      adjust current page offsets by geometry
# @option -resize <geometry>                      resize the image
# @option -rotate <degrees>                       apply Paeth rotation to the image
# @option -sampling-factor <HxV[,...]>            horizontal and vertical sampling factors
# @option -scenes <range>                         image scene range
# @flag -set                                      attribute value set image attribute
# @flag -shadow                                   add a shadow beneath a tile to simulate depth
# @option -sharpen <geometry>                     sharpen the image
# @option -size <geometry>                        width and height of image
# @flag -strip                                    strip all profiles and text attributes from image
# @option -stroke <color>                         color to use when stroking a graphic primitive
# @option -strokewidth <value>                    stroke (line) width
# @option -texture <filename>                     name of texture to tile onto the image background
# @option -thumbnail <geometry>                   resize the image (optimized for thumbnails)
# @option -tile <geometry>                        number of tiles per row and column
# @option -title <string>                         thumbnail title
# @flag -transform                                affine transform image
# @option -transparent <color>                    make this color transparent within the image
# @option -treedepth <value>                      color tree depth
# @flag -trim                                     trim image edges
# @option -type[`_choice_type`] <type>            image type
# @flag -verbose                                  print detailed information about the image
# @flag -version                                  print version information
# @option -virtual-pixel[`_choice_virtual_pixel`] <method>  Constant, Edge, Mirror, or Tile
# @option -white-point <point>                    chomaticity white point
# @arg file
montage() {
    :;
}
# }} gm montage

# {{ gm time
# @cmd time one of the other commands
# @arg command
time_() {
    :;
}
# }} gm time

# {{ gm version
# @cmd obtain release version
version() {
    :;
}
# }} gm version

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

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

command eval "$(argc --argc-eval "$0" "$@")"