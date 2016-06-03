# Colorizr

Colorizr is a gem that colors text output to the terminal.

## Features

There are nine colors that Colorizr supports:
* Red
* Green
* Yellow
* Blue
* Pink
* Light blue
* White
* Light Grey
* Black

You can colorize any code output to the terminal in one of these colors.

## Installation

To install colorizr, first clone this repository:

`git clone https://github.com/paulghaddad/survivr_1`

Navigate to the directory and install the gem:

`gem install colorizr`

And that's all!

## How to Use

To use Colorizr, require it in your project:

`require "colorizr"`

Or add it to your `Gemfile`:

`gem colorizr`

To colorize text output to the terminal, simply call the color method on a
string:

`"string".green`

You can see a list of available colors:

`String.colors`

and sample text in all the colors:

`String.sample_colors`
