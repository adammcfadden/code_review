require 'rspec'
require 'word_counter'

describe('String#word_counter') do
  it('receive a one word input to count for, receive the same word to count in. Count the correct number o words, one.') do
    expect('world'.word_counter('world')).to(eq('1'))
  end

  it('receive a one word input to count for, receive a sentence to count in. Count the corrent number of words.') do
    expect('red'.word_counter("The red dog walked down the red dirt street, into a red sunset")).to(eq('3'))
  end
end
