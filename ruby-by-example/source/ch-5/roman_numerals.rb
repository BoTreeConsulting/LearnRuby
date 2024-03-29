class Integer
# Base conversion Hash
ARABIC_TO_ROMAN = {
	1000 => 'M',
	500 => 'D',
	100 => 'C',
	50 => 'L',
	10 => 'X',
	5 => 'V',
	1 => 'I',
	0 => '',
}
# Represent 4 as 'IV', rather than 'IIII'?
SUBTRACTIVE_TO_ROMAN = {
	900 => 'CM',
	400 => 'CD',
	90 => 'XC',
	40 => 'XL',
	9 => 'IX',
	4 => 'IV',
}
# Use SUBTRACTIVE_TO_ROMAN Hash?
SUBTRACTIVE = true
def to_roman()
	@@roman_of ||= create_roman_of()
	return '' unless (self > 0)
	return to_s if self > maximum_representable()
	base = @@roman_of.keys.sort.reverse.detect { |k| k <= self } # detect, it finds the first occurance of value satisfying the condition.
	return '' unless (base and base > 0)
	return (@@roman_of[base] * round_to_base(base)) + (self % base).to_roman()
end
private
=begin rdoc
Use constants to create a <b>Hash</b> of appropriate roman numeral values.
=end
def create_roman_of()
return ARABIC_TO_ROMAN unless SUBTRACTIVE
ARABIC_TO_ROMAN.merge(SUBTRACTIVE_TO_ROMAN)
end
=begin rdoc
What is the largest number that this method can reasonably represent?
=end
def maximum_representable()
(@@roman_of.keys.max * 5) - 1
end
def round_to_base(base)
(self - (self % base)) / base
end
end

numbers = (4990..5010).to_a
numbers.each { |d| puts d.to_roman()}