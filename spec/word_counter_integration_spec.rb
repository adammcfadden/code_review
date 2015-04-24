require ('capybara/rspec')
require ('./app')
Capybara.app = Sinatra::Application

describe('The word counter path', {:type => :feature}) do
  it('receive sentence and word search input from the user, send those through the word_counter method and return the values on the counter page') do
    visit('/')
    fill_in('search_word', :with => 'blue')
    fill_in('sentence', :with => 'The Blue moon was rising up over town and the blue boy picked some berries. His blue dog chased a blue squirrel to the Blue Tavern and came back with a pint.')
    click_button('submit_search')
    expect(page).to(have_content('5'))
  end
end
