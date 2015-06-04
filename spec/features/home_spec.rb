require 'rails_helper'

feature 'Home' do
  scenario 'select change', js: true do
    visit root_path
    expect(page).to_not have_content 'changed!'
    expect(page).to have_select 'page_name'
    select 'Railsの基礎', from: 'page_name'
    expect(page).to have_content 'changed!'
  end
end