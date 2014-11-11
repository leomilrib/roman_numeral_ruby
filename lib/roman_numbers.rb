class RomanNumbers

  ROMAN_MAP = {
    1 => 'I',
    4 => 'IV',
    5 => 'V',
    9 => 'IX',
    10 => 'X',
    40 => 'XL',
    50 => 'L',
    90 => 'XC',
    100 => 'C',
    400 => 'CD',
    500 => 'D',
    900 => 'CM',
    1000 => 'M'
  }

  def translate number
    roman = ''
    # ROMAN_MAP.keys.sort{ |x,y| y <=> x }.each do |value|
    ROMAN_MAP.keys.sort.reverse.each do |value|
      count = number / value
      number = number % value
      # count, number = number.divmod(value)
      roman << ROMAN_MAP[value].to_s * count
    end
    roman
  end
end
