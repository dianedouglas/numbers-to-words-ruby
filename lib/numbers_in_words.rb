def numbers_in_words(num)
  if num <= 9
    ones_to_words(num)
  elsif num <= 19
    teens_to_words(num)
  elsif num <= 99
    doubles_to_words(num)
  elsif num <= 999
    first = ones_to_words(num.to_s[0].to_i) + " hundred "
    second = numbers_in_words(num.to_s[1,2].to_i)
    first + second
  elsif num <= 9999
    first = ones_to_words(num.to_s[0].to_i) + " thousand "
    the_rest = numbers_in_words(num.to_s[1..3].to_i)
    first + the_rest
  end

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
