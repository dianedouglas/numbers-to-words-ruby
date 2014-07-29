require ("rspec")
require ("numbers_in_words")

describe("numbers_in_words") do
  it("takes a number and writes it into word form") do
    numbers_in_words(1).should(eq("one"))
  end

  it("takes a number over 9 but under 20 and translates it into word form") do
    numbers_in_words(11).should(eq("eleven"))
  end

  it("takes a double digit number word and returns its numerical value") do
    numbers_in_words(55).should(eq("fifty five"))
  end
end

describe("ones_to_words") do
  it("takes the first digit of the input number and translates it to words") do
    ones_to_words(1).should(eq("one"))
  end
end
