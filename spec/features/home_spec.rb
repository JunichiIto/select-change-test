require 'rails_helper'

feature 'Home' do
  scenario 'select change', js: true do
    visit root_path
    expect(page).to_not have_content 'changed!'
    expect(page).to have_select 'select_field'
    select 'Railsの基礎', from: 'select_field'
    expect(page).to have_content 'changed!'
  end
end