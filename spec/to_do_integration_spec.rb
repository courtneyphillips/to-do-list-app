require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('to do path', {:type => :feature}) do
  it ('shows a page with input for task descriptions and a submit button. On submit,
  will show a successful save of task input') do
    visit('/')
    fill_in('description', :with => 'buy buzz lightyear pinata for the toy story birthday party')
    click_button('Get On It!')
    expect(page).to have_content('Task has been saved')
  end

end
