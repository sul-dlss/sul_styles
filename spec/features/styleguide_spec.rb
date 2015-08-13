require 'rails_helper'

feature 'Styleguide' do
  scenario 'Colors and Icon links' do
    visit '/styleguide'
    expect(page).not_to have_css('h2', text: 'Colors')
    expect(page).not_to have_css('h3', text: 'Icons')

    click_link 'Colors'
    expect(page).to have_css('h2', text: 'Colors')
    expect(page).not_to have_css('h3', text: 'Icons')

    visit '/styleguide'
    click_link 'Icons'
    expect(page).not_to have_css('h2', text: 'Colors')
    expect(page).to have_css('h3', text: 'Icons')
  end

end
