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
