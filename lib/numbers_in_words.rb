def numbers_in_words(num)

  # placeholders = [" thousand ", " million ", " billion ", " trillion "]
  number_of_left_digits = 0
  place_holder = 0

return_number = 0
  if num <= 9
    return_number = ones_to_words(num)
  elsif num <= 19
    return_number = teens_to_words(num)
  elsif num <= 99
    return_number = doubles_to_words(num)
  elsif num <= 999
    first = ones_to_words(num.to_s[0].to_i) + " hundred "
    second = numbers_in_words(num.to_s[1,2].to_i)
    return_number = first + second
  else
    if num.to_s.length % 3 == 0
      number_of_left_digits = 3
    else
      number_of_left_digits = num.to_s.length % 3
    end

    if num.to_s.length >= 13
      place_holder = " trillion "
    elsif num.to_s.length >= 10
      place_holder = " billion "
    elsif num.to_s.length >= 7
      place_holder = " million "
    elsif num.to_s.length >= 4
      place_holder = " thousand "
    end

    first = numbers_in_words(num.to_s.slice(0,(number_of_left_digits)).to_i) + place_holder
    num = num.to_s.slice(number_of_left_digits, (num.to_s.length - number_of_left_digits))
    the_rest = numbers_in_words(num.to_i)
    return_number = first + the_rest


  end
  return_number
end

def doubles_to_words(num)
  tens = {
    2 => 'twenty',
    3 => 'thirty',
    4 => 'forty',
    5 => 'fifty',
    6 => 'sixty',
    7 => 'seventy',
    8 => 'eighty',
    9 => 'ninety'
  }

  ones = ones_to_words(num.to_s[1].to_i)
  tens[num.to_s[0].to_i] + " " + ones

end

def teens_to_words(num)
  teens = {
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen"
  }
    teens[num]
end

def ones_to_words(num)
  word_list = {
    0=>'',
    1=>'one',
    2=>'two',
    3=>'three',
    4=>'four',
    5=>'five',
    6=>'six',
    7=>'seven',
    8=>'eight',
    9=>'nine',
  }

  word_list[num]
end

puts numbers_in_words(9121)
