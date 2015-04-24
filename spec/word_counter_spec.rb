require 'rspec'
require 'word_counter'

describe('String#word_counter') do
  it('receive a one word input to count for, receive the same word to count in. Count the correct number or words, one.') do
    expect('world'.word_converter('world')).it(.eq('1'))
  end
end
