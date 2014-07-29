def numbers_in_words(num)
  ones_to_words(num)
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
