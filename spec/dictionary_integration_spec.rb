require('capybara/rspec')
require('./app')
require('launchy')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe('path to view all words', {:type => :feature}) do
  it('sends user to word list') do
    visit('/')
    click_link('See Word List')
    expect(page).to have_content("Word List")
  end
end

describe('path to add a new word', {:type => :feature}) do
  it('sends user to new word form') do
    visit('/')
    click_link('Add a New Word')
    expect(page).to have_content("Add a Word Here:")
  end
end
