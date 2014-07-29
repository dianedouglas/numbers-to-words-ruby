def numbers_in_words(num)

  placeholders = [" thousand", " million", " billion", " trillion"]
  number_of_left_digits = 0
  #3 - hundred
  #4 - 6 thousand
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
  # elsif num <= 9999
  #   first = numbers_in_words(num.to_s.slice(0,(num.to_s.length % 3)).to_i) + " thousand "
  #   the_rest = numbers_in_words(num.to_s[1..3].to_i)
  #   return_number = first + the_rest
  elsif num <= 999_999
    if num.to_s.length % 3 == 0
      number_of_left_digits = 3
    else
      number_of_left_digits = num.to_s.length % 3
    end
    first = numbers_in_words(num.to_s.slice(0,(number_of_left_digits)).to_i) + " thousand "
    the_rest = numbers_in_words(num.to_s[num.to_s.length-3..num.to_s.length].to_i)
    return_number = first + the_rest
  end

  # else
  #   number_list = num.to_s.split("")
  #   count = 0
  #   master_count = 0
  #   number_group = ""
  #   place_number = ""

  #   number_list.reverse.each do |number|

  #     number_group += number
  #     if count == 2
  #       if !(number_list.length - master_count < 3)
  #       place_number += placeholders[master_count/3] + " " + numbers_in_words(number_group.reverse.to_i)
  #       else
  #       place_number = numbers_in_words(number_group.reverse.to_i) + place_number
  #       return_number = place_number
  #       end
  #       number_group = ""
  #       count = 0
  #     else
  #       if (number_list.length - master_count < 3)
  #       return_number = numbers_in_words(number_group.reverse.to_i) + place_number
  #       end

  #       count += 1
  #     end
  #     master_count += 1
  #   end

  #   #1234

  #   # number_list = num.to_s.split("")
  #   # number_list.each_index do |i|
  #   #   current_number = numbers_in_words((number_list[number_list.length-3..number_list.length]).join("").to_i)
  #   #   if number_list.length  >= 13
  #   #     current_number += " trillion"
  #   #   elsif number_list.length  >= 10
  #   #     current_number += " billion"
  #   #   elsif number_list.length  >= 7
  #   #     current_number += " million"
  #   #   elsif number_list.length  >= 4
  #   #     current_number += " thousand"
  #   #   end
  #   #     number_list.slice!(number_list.length-3..number_list.length)
  #   #     numbers_in_words(number_list.join("").to_i)
  #   #     return_number = current_number
  #   # end
  # end
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

puts numbers_in_words(999999)
