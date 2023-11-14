#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -m --color-mode[24bit|8bit|off|auto] <mode>  Specify the terminal color mode: 24bit, 8bit, off, auto
# @flag -f --force-color    Alias for --mode=24bit
# @option --color-picker[gpick|xcolor|wcolor|grabc|colorpicker|chameleon|kcolorchooser|zenity|yad|gdbus] <color-picker>  Use a specific tool to pick the colors
# @flag -h --help           Print help information
# @flag -V --version        Print version information

# {{ pastel color
# @cmd Display information about the given color
# @flag -h --help                 Print help information
# @arg color+[`_choice_color`]    Colors can be specified in many different formats, such as ♯RRGGBB, RRGGBB, ♯RGB, 'rgb(…, …, …)', 'hsl(…, …, …)', 'gray(…)' or simply by the name of the color.
color() {
    :;
}
# }} pastel color

# {{ pastel list
# @cmd Show a list of available color names
# @option -s --sort[brightness|luminance|hue|chroma|random] <sort-order>  Sort order [default: hue]
# @flag -h --help    Print help information
list() {
    :;
}
# }} pastel list

# {{ pastel random
# @cmd Generate a list of random colors
# @option -s --strategy <strategy>    Randomization strategy:
# @option -n --number <count>         Number of colors to generate
# @flag -h --help                     Print help information
random() {
    :;
}
# }} pastel random

# {{ pastel distinct
# @cmd Generate a set of visually distinct colors
# @option -m --metric[CIEDE2000|CIE76] <name>    Distance metric to compute mutual color distances.
# @flag -v --verbose                             Print simulation output to STDERR
# @flag -h --help                                Print help information
# @arg count!                                    Number of distinct colors in the set
# @arg color+[`_choice_color`]                   Colors can be specified in many different formats, such as ♯RRGGBB, RRGGBB, ♯RGB, 'rgb(…, …, …)', 'hsl(…, …, …)', 'gray(…)' or simply by the name of the color.
distinct() {
    :;
}
# }} pastel distinct

# {{ pastel sort-by
# @cmd Sort colors by the given property
# @flag -r --reverse              Reverse the sort order
# @flag -u --unique               Remove duplicate colors (equality is determined via RGB values)
# @flag -h --help                 Print help information
# @arg sort-order![brightness|luminance|hue|chroma|random]  Sort order
# @arg color+[`_choice_color`]    Colors can be specified in many different formats, such as ♯RRGGBB, RRGGBB, ♯RGB, 'rgb(…, …, …)', 'hsl(…, …, …)', 'gray(…)' or simply by the name of the color.
sort-by() {
    :;
}
# }} pastel sort-by

# {{ pastel pick
# @cmd Interactively pick a color from the screen (pipette)
# @flag -h --help    Print help information
# @arg count!        Number of colors to pick
pick() {
    :;
}
# }} pastel pick

# {{ pastel format
# @cmd Convert a color to the given format
# @flag -h --help                 Print help information
# @arg type!                      Output format type.
# @arg color+[`_choice_color`]    Colors can be specified in many different formats, such as ♯RRGGBB, RRGGBB, ♯RGB, 'rgb(…, …, …)', 'hsl(…, …, …)', 'gray(…)' or simply by the name of the color.
format() {
    :;
}
# }} pastel format

# {{ pastel paint
# @cmd Print colored text using ANSI escape sequences
# @option -o --on <bg-color>      Use the specified background color
# @flag -b --bold                 Print the text in bold face
# @flag -i --italic               Print the text in italic font
# @flag -u --underline            Draw a line below the text
# @flag -n --no-newline           Do not print a trailing newline character
# @flag -h --help                 Print help information
# @arg color![`_choice_color`]    The foreground color.
# @arg text+                      The text to be printed in color.
paint() {
    :;
}
# }} pastel paint

# {{ pastel gradient
# @cmd Generate an interpolating sequence of colors
# @option -n --number <count>     Number of colors to generate
# @option -s --colorspace[Lab|LCh|RGB|HSL] <name>  The colorspace in which to interpolate
# @flag -h --help                 Print help information
# @arg color+[`_choice_color`]    Color stops in the color gradient
gradient() {
    :;
}
# }} pastel gradient

# {{ pastel mix
# @cmd Mix two colors in the given colorspace
# @option -s --colorspace[Lab|LCh|RGB|HSL] <name>  The colorspace in which to interpolate
# @option -f --fraction <fraction>    The number between 0.0 and 1.0 determining how much to mix in from the base color.
# @flag -h --help                     Print help information
# @arg color*[`_choice_color`]
mix() {
    :;
}
# }} pastel mix

# {{ pastel colorblind
# @cmd Simulate a color under a certain colorblindness profile
# @flag -h --help                 Print help information
# @arg type![protanopia|deuteranopia|tritanopia]  The type of colorblindness that should be simulated
# @arg color+[`_choice_color`]    Colors can be specified in many different formats, such as ♯RRGGBB, RRGGBB, ♯RGB, 'rgb(…, …, …)', 'hsl(…, …, …)', 'gray(…)' or simply by the name of the color.
colorblind() {
    :;
}
# }} pastel colorblind

# {{ pastel set
# @cmd Set a color property to a specific value
# @flag -h --help                 Print help information
# @arg property!                  The property that should be changed
# @arg value!                     The new numerical value of the property
# @arg color+[`_choice_color`]    Colors can be specified in many different formats, such as ♯RRGGBB, RRGGBB, ♯RGB, 'rgb(…, …, …)', 'hsl(…, …, …)', 'gray(…)' or simply by the name of the color.
set() {
    :;
}
# }} pastel set

# {{ pastel saturate
# @cmd Increase color saturation by a specified amount
# @flag -h --help                 Print help information
# @arg amount!                    Amount of saturation to add (number between 0.0 and 1.0)
# @arg color+[`_choice_color`]    Colors can be specified in many different formats, such as ♯RRGGBB, RRGGBB, ♯RGB, 'rgb(…, …, …)', 'hsl(…, …, …)', 'gray(…)' or simply by the name of the color.
saturate() {
    :;
}
# }} pastel saturate

# {{ pastel desaturate
# @cmd Decrease color saturation by a specified amount
# @flag -h --help                 Print help information
# @arg amount!                    Amount of saturation to subtract (number between 0.0 and 1.0)
# @arg color+[`_choice_color`]    Colors can be specified in many different formats, such as ♯RRGGBB, RRGGBB, ♯RGB, 'rgb(…, …, …)', 'hsl(…, …, …)', 'gray(…)' or simply by the name of the color.
desaturate() {
    :;
}
# }} pastel desaturate

# {{ pastel lighten
# @cmd Lighten color by a specified amount
# @flag -h --help                 Print help information
# @arg amount!                    Amount of lightness to add (number between 0.0 and 1.0)
# @arg color+[`_choice_color`]    Colors can be specified in many different formats, such as ♯RRGGBB, RRGGBB, ♯RGB, 'rgb(…, …, …)', 'hsl(…, …, …)', 'gray(…)' or simply by the name of the color.
lighten() {
    :;
}
# }} pastel lighten

# {{ pastel darken
# @cmd Darken color by a specified amount
# @flag -h --help                 Print help information
# @arg amount!                    Amount of lightness to subtract (number between 0.0 and 1.0)
# @arg color+[`_choice_color`]    Colors can be specified in many different formats, such as ♯RRGGBB, RRGGBB, ♯RGB, 'rgb(…, …, …)', 'hsl(…, …, …)', 'gray(…)' or simply by the name of the color.
darken() {
    :;
}
# }} pastel darken

# {{ pastel rotate
# @cmd Rotate the hue channel by the specified angle
# @flag -h --help                 Print help information
# @arg degrees!                   angle by which to rotate (in degrees, can be negative)
# @arg color+[`_choice_color`]    Colors can be specified in many different formats, such as ♯RRGGBB, RRGGBB, ♯RGB, 'rgb(…, …, …)', 'hsl(…, …, …)', 'gray(…)' or simply by the name of the color.
rotate() {
    :;
}
# }} pastel rotate

# {{ pastel complement
# @cmd Get the complementary color (hue rotated by 180°)
# @flag -h --help                 Print help information
# @arg color+[`_choice_color`]    Colors can be specified in many different formats, such as ♯RRGGBB, RRGGBB, ♯RGB, 'rgb(…, …, …)', 'hsl(…, …, …)', 'gray(…)' or simply by the name of the color.
complement() {
    :;
}
# }} pastel complement

# {{ pastel gray
# @cmd Create a gray tone from a given lightness
# @flag -h --help    Print help information
# @arg lightness!    Lightness of the created gray tone (number between 0.0 and 1.0)
gray() {
    :;
}
# }} pastel gray

# {{ pastel to-gray
# @cmd Completely desaturate a color (preserving luminance)
# @flag -h --help                 Print help information
# @arg color+[`_choice_color`]    Colors can be specified in many different formats, such as ♯RRGGBB, RRGGBB, ♯RGB, 'rgb(…, …, …)', 'hsl(…, …, …)', 'gray(…)' or simply by the name of the color.
to-gray() {
    :;
}
# }} pastel to-gray

# {{ pastel textcolor
# @cmd Get a readable text color for the given background color
# @flag -h --help                 Print help information
# @arg color+[`_choice_color`]    Colors can be specified in many different formats, such as ♯RRGGBB, RRGGBB, ♯RGB, 'rgb(…, …, …)', 'hsl(…, …, …)', 'gray(…)' or simply by the name of the color.
textcolor() {
    :;
}
# }} pastel textcolor

_choice_color() {
    printf "%s(\x00\n" rgb hsl gray rgba hsla 
    printf "%s\n" black silver gray white maroon red purple fuchsia green \
        lime olive yellow navy blue teal aqua
}

command eval "$(argc --argc-eval "$0" "$@")"