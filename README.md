# Intro

PNGlitchGIF is a tool based off of [PNGlitch](https://github.com/ucnv/pnglitch) by [ucnv](https://github.com/ucnv/).

PNGlitchGIF works by applying PNGlitch to an image multiple times with increasing then decreasing intensity.
The results are stored in the directory named `frames`.
After all the frames have been created an animated GIF is created from them.
The frames can then be used to created an animated GIF like the one seen below:

![Example](https://github.com/jmhooper/PNGlitchGIF/blob/master/example.gif)

# Usage

1. Clone this repo
1. Bundle
2. Change the file named `input.png` to one of your choosing.
3. Run `ruby glitch.rb`
4. Find the output as example.gif. The frames remain in the `frames` directory.
