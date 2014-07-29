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

describe("teens_to_words") do
  it("takes numbers between 10 and 19 inclusive and translates to words") do
    teens_to_words(12).should(eq("twelve"))
  end
end

describe("doubles_to_words") do
  it("takes numbers from 20 to 99 and translates them to words") do
    doubles_to_words(55).should(eq("fifty five"))
  end
end
