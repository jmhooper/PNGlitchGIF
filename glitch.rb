require "pnglitch"

LETTERS_BASE = ((65...91).to_a + (97...123).to_a).map { |c| c.chr }

def glitch(input, output, regex)
	PNGlitch.open input do |png|
	  png.each_scanline do |scanline|
	    scanline.change_filter 1
	  end
	  png.glitch do |data|
	  	data.gsub(regex, 'x')
	  end
	  png.save(output)
	end
end

original_letters = LETTERS_BASE.dup
migrated_letters = ['@']

LETTERS_BASE.size.times do |i|
	sample = original_letters.sample
	original_letters.delete(sample)
	migrated_letters += [sample]

	puts migrated_letters.join

	filename = "%03d" % i
	glitch("input.png", "frames/#{filename}.png", /[#{migrated_letters.join}]/)
end

LETTERS_BASE.size.times do |i|
	sample = migrated_letters.sample
	migrated_letters.delete(sample)

	puts migrated_letters.join

	filename = "%03d" % (i + 52)
	glitch("input.png", "frames/#{filename}.png", /[#{migrated_letters.join}]/)
end
