#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -adjoin                              join images into a single multi-image file
# @option -affine <matrix>                   affine transform matrix
# @flag -antialias                           remove pixel-aliasing
# @option -authenticate <value>              decrypt image with this password
# @option -background <color>                background color
# @option -bias <value>                      add bias when convolving an image
# @flag -black-point-compensation            use black point compensation
# @option -blue-primary <point>              chromaticity blue primary point
# @option -bordercolor <color>               border color
# @option -caption <string>                  assign a caption to an image
# @option -cdl <filename>                    color correct with a color decision list
# @option -colors <value>                    preferred number of colors in the image
# @option -colorspace <type>                 alternate image colorspace
# @option -comment <string>                  annotate image with comment
# @option -compose <operator>                set image composite operator
# @option -compress <type>                   type of pixel compression when writing the image
# @option -decipher <filename>               magick cipher pixels to plain pixels
# @option -define <format:option>            define one or more image format options
# @option -delay <centiseconds>              display the next image after pausing
# @option -density <geometry>                horizontal and vertical density of the image
# @option -depth <value>                     image depth
# @option -direction <type>                  render text right-to-left or left-to-right
# @option -display <server>                  get image or font from this X server
# @option -dispose <method>                  layer disposal method
# @option -dither <method>                   apply error diffusion to image
# @option -encipher <filename>               magick plain pixels to cipher pixels
# @option -encoding <type>                   text encoding type
# @option -endian <type>                     endianness (MSB or LSB) of the image
# @option -family <name>                     render text with this font family
# @option -fill <color>                      color to use when filling a graphic primitive
# @option -filter <type>                     use this filter when resizing an image
# @option -font <name>                       render text with this font
# @option -format <"string">                 output formatted image characteristics
# @option -fuzz <distance>                   colors within this distance are considered equal
# @option -gravity <type>                    horizontal and vertical text placement
# @flag -green-primary                       point chromaticity green primary point
# @option -intent <type>                     type of rendering intent when managing the image color
# @option -interlace <type>                  type of image interlacing scheme
# @option -interpolate <method>              pixel color interpolation method
# @option -kerning <value>                   set the space between two letters
# @option -label <string>                    assign a label to an image
# @option -limit <type> <value>              pixel cache resource limit
# @option -loop <iterations>                 add Netscape loop extension to your GIF animation
# @option -mask <filename>                   associate a mask with the image
# @flag -matte                               store matte channel if the image has one
# @option -mattecolor <color>                frame color
# @flag -monitor                             monitor progress
# @option -orient <type>                     image orientation
# @option -origin <geometry>                 image origin
# @option -page <geometry>                   size and location of an image canvas (setting)
# @flag -ping                                efficiently determine image attributes
# @option -pointsize <value>                 font point size
# @option -preview <type>                    image preview type
# @option -quality <value>                   JPEG/MIFF/PNG compression level
# @flag -quiet                               suppress all warning messages
# @option -red-primary <point>               chromaticity red primary point
# @flag -regard-warnings                     pay attention to warning messages
# @option -repage <geometry>                 size and location of an image canvas
# @option -sampling-factor <geometry>        horizontal and vertical sampling factor
# @option -scene <value>                     image scene number
# @option -seed <value>                      seed a new sequence of pseudo-random numbers
# @option -size <geometry>                   width and height of image
# @option -statistic <type> <geometry>       replace each pixel with corresponding statistic from the neighborhood
# @option -stretch <type>                    render text with this font stretch
# @option -stroke <color>                    graphic primitive stroke color
# @option -strokewidth <value>               graphic primitive stroke width
# @option -style <type>                      render text with this font style
# @option -support <factor>                  resize support: > 1.0 is blurry, < 1.0 is sharp
# @flag -synchronize                         synchronize image to storage device
# @flag -taint                               declare the image as modified
# @option -texture <filename>                name of texture to tile onto the image background
# @option -tile-offset <geometry>            tile offset
# @option -treedepth <value>                 color tree depth
# @option -transparent-color <color>         transparent color
# @option -undercolor <color>                annotation bounding box color
# @option -units <type>                      the units of image resolution
# @flag -verbose                             print detailed information about the image
# @flag -view                                FlashPix viewing transforms
# @option -virtual-pixel <method>            virtual pixel access method
# @option -weight <type>                     render text with this font weight
# @option -white-point <point>               chromaticity white point
# @option -adaptive-blur <geometry>          adaptively blur pixels; decrease effect near edges
# @option -adaptive-resize <geometry>        adaptively resize image with data dependent triangulation
# @option -adaptive-sharpen <geometry>       adaptively sharpen pixels; increase effect near edges
# @option -annotate <geometry> <text>        annotate the image with text
# @flag -auto-orient                         automatically orient image
# @option -bilateral-blur <geometry>         non-linear, edge-preserving, and noise-reducing smoothing filter
# @option -black-threshold <value>           force all pixels below the threshold into black
# @option -blur <geometry>                   reduce image noise and reduce detail levels
# @option -border <geometry>                 surround image with a border of color
# @option -channel <mask>                    set the image channel mask
# @option -charcoal <radius>                 simulate a charcoal drawing
# @option -chop <geometry>                   remove pixels from the image interior
# @flag -clip                                clip along the first path from the 8BIM profile
# @option -clip-mask <filename>              associate a clip mask with the image
# @option -clip-path <id>                    clip along a named path from the 8BIM profile
# @option -colorize <value>                  colorize the image with the fill color
# @flag -color-matrix                        matrix apply color correction to the image
# @flag -contrast                            enhance or reduce the image contrast
# @option -contrast-stretch <geometry>       improve contrast by `stretching' the intensity range
# @option -convolve <coefficients>           apply a convolution kernel to the image
# @option -cycle <amount>                    cycle the image colormap
# @flag -despeckle                           reduce the speckles within an image
# @option -draw <string>                     annotate the image with a graphic primitive
# @option -edge <radius>                     apply a filter to detect edges in the image
# @option -emboss <radius>                   emboss an image
# @flag -enhance                             apply a digital filter to enhance a noisy image
# @flag -equalize                            perform histogram equalization to an image
# @option -evaluate <operator> <value>       evaluate an arithmetic, relational, or logical expression
# @option -extent <geometry>                 set the image size
# @option -extract <geometry>                extract area from image
# @flag -fft                                 implements the discrete Fourier transform (DFT)
# @flag -flip                                flip image vertically
# @option -floodfill <geometry> <color>      floodfill the image with color
# @flag -flop                                flop image horizontally
# @option -frame <geometry>                  surround image with an ornamental border
# @option -function <name>                   apply a function to the image
# @option -gamma <value>                     level of gamma correction
# @option -gaussian-blur <geometry>          reduce image noise and reduce detail levels
# @option -geometry <geometry>               preferred size or location of the image
# @flag -identify                            identify the format and characteristics of the image
# @flag -ift                                 implements the inverse discrete Fourier transform (DFT)
# @option -implode <amount>                  implode image pixels about the center
# @flag -integral                            calculate the sum of values (pixel values) in the image
# @option -lat <geometry>                    local adaptive thresholding
# @option -layers <method>                   optimize or compare image layers
# @option -level <value>                     adjust the level of image contrast
# @option -linear-stretch <geometry>         improve contrast by `stretching with saturation' the intensity range
# @option -median <geometry>                 apply a median filter to the image
# @option -mode <geometry>                   make each pixel the 'predominant color' of the neighborhood
# @option -modulate <value>                  vary the brightness, saturation, and hue
# @flag -monochrome                          transform image to black and white
# @option -morphology <method> <kernel>      apply a morphology method to the image
# @option -motion-blur <geometry>            simulate motion blur
# @flag -negate                              replace each pixel with its complementary color
# @option -noise <geometry>                  add or reduce noise in an image
# @flag -normalize                           transform image to span the full range of colors
# @option -opaque <color>                    change this color to the fill color
# @option -ordered-dither <NxN>              add a noise pattern to the image with specific amplitudes
# @option -paint <radius>                    simulate an oil painting
# @option -polaroid <angle>                  simulate a Polaroid picture
# @option -posterize <levels>                reduce the image to a limited number of color levels
# @option -print <string>                    interpret string and print to console
# @option -profile <filename>                add, delete, or apply an image profile
# @flag -quantize                            colorspace reduce colors in this colorspace
# @option -radial-blur <angle>               radial blur the image
# @option -raise <value>                     lighten/darken image edges to create a 3-D effect
# @option -random-threshold <low,high>       random threshold the image
# @option -range-threshold <values>          perform either hard or soft thresholding within some range of values in an image
# @option -region <geometry>                 apply options to a portion of the image
# @flag -render                              render vector graphics
# @option -resample <geometry>               change the resolution of an image
# @option -resize <geometry>                 resize the image
# @option -roll <geometry>                   roll an image vertically or horizontally
# @option -rotate <degrees>                  apply Paeth rotation to the image
# @option -sample <geometry>                 scale image with pixel sampling
# @option -scale <geometry>                  scale the image
# @option -segment <values>                  segment an image
# @option -selective-blur <geometry>         selectively blur pixels within a contrast threshold
# @option -sepia-tone <threshold>            simulate a sepia-toned photo
# @option -set <property> <value>            set an image property
# @option -shade <degrees>                   shade the image using a distant light source
# @option -shadow <geometry>                 simulate an image shadow
# @option -sharpen <geometry>                sharpen the image
# @option -shave <geometry>                  shave pixels from the image edges
# @option -shear <geometry>                  slide one edge of the image along the X or Y axis
# @option -sigmoidal-contrast <geometry>     lightness rescaling using sigmoidal contrast enhancement
# @option -sketch <geometry>                 simulate a pencil sketch
# @option -solarize <threshold>              negate all pixels above the threshold level
# @flag -sort-pixels                         sort each scanline in ascending order of intensity
# @option -splice <geometry>                 splice the background color into the image
# @option -spread <amount>                   displace image pixels by a random amount
# @flag -strip                               strip image of all profiles and comments
# @option -swirl <degrees>                   swirl image pixels about the center
# @option -threshold <value>                 threshold the image
# @option -thumbnail <geometry>              create a thumbnail of the image
# @option -tile <filename>                   tile image when filling a graphic primitive
# @option -tint <value>                      tint the image with the fill color
# @flag -transform                           affine transform image
# @option -transparent <color>               make this color transparent within the image
# @flag -transpose                           flip image vertically and rotate 90 degrees
# @flag -transverse                          flop image horizontally and rotate 270 degrees
# @flag -trim                                trim image edges
# @option -type <type>                       image type
# @flag -unique-colors                       discard all but one of any pixel color
# @option -unsharp <geometry>                sharpen the image
# @option -vignette <geometry>               soften the edges of the image in vignette style
# @option -wave <geometry>                   alter an image along a sine wave
# @option -white-threshold <value>           force all pixels above the threshold into white
# @option -channel-extract <channel-list>    extract the channels in order
# @option -channel-inject <channel-list>     inject the channels in order
# @option -channel-swap <channel,channel>    swap the channels
# @option -affinity <filename>               transform image colors to match this set of colors
# @flag -append                              append an image sequence top to bottom (use +append for left to right)
# @flag -clut                                apply a color lookup table to the image
# @flag -coalesce                            merge a sequence of images
# @flag -combine                             combine a sequence of images
# @flag -composite                           composite image
# @option -crop <geometry>                   cut out a rectangular region of the image
# @flag -deconstruct                         break down an image sequence into constituent parts
# @option -evaluate-sequence <operator>      evaluate an arithmetic, relational, or logical expression
# @flag -flatten                             flatten a sequence of images
# @option -fx <expression>                   apply mathematical expression to an image channel(s)
# @flag -hald-clut                           apply a Hald color lookup table to the image
# @option -morph <value>                     morph an image sequence
# @flag -mosaic                              create a mosaic from an image sequence
# @option -process <arguments>               process the image with a custom image filter
# @flag -separate                            separate an image channel into a grayscale image
# @option -smush <geometry>                  smush an image sequence together
# @option -write <filename>                  write images to this file
# @option -clone <indexes>                   clone an image
# @option -delete <indexes>                  delete the image from the image sequence
# @option -duplicate <count,indexes>         duplicate an image one or more times
# @option -insert <index>                    insert last image into the image sequence
# @option -swap <indexes>                    swap two images in the image sequence
# @option -debug <events>                    display copious debugging information
# @flag -help                                print program options
# @option -log <format>                      format of debugging information
# @option -list <type>                       print a list of supported option arguments
# @flag -version                             print version information
# @arg input-file
# @arg output-file

command eval "$(argc --argc-eval "$0" "$@")"