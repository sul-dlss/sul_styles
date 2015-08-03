require 'rails_helper'

feature 'Icons' do
  scenario 'Icon defaults' do
    visit '/styleguide/icons'
    expect(page).to have_css 'h3', text: 'Icons'
    expect(page).to have_css '.sul-i-download-3-char', text: 'f106'
    expect(page).to have_css '.sul-i-expand-diagonal-2-char', text: 'f103'
    expect(page).to have_css '.sul-i-file-new-1-char', text: 'f100'
    expect(page).to have_css '.sul-i-files-2-char', text: 'f101'
    expect(page).to have_css '.sul-i-infomation-circle-char', text: 'f104'
    expect(page).to have_css '.sul-i-link-3-char', text: 'f107'
    expect(page).to have_css '.sul-i-share-char', text: 'f105'
    expect(page).to have_css '.sul-i-view-module-1-char', text: 'f102'
  end
  scenario 'Icon aliases' do
    visit '/styleguide/icons'
    expect(page).to have_css 'h3', text: 'Icon aliases'
    expect(page).to have_css '.icon-example-name', text: 'sul-i-download'
    expect(page).to have_css '.icon-example-name', text: 'sul-i-expand'
    expect(page).to have_css '.icon-example-name', text: 'sul-i-fullscreen'
    expect(page).to have_css '.icon-example-name', text: 'sul-i-singlepage'
    expect(page).to have_css '.icon-example-name', text: 'sul-i-twopage'
    expect(page).to have_css '.icon-example-name', text: 'sul-i-info'
    expect(page).to have_css '.icon-example-name', text: 'sul-i-link'
    expect(page).to have_css '.icon-example-name', text: 'sul-i-gallery'
  end
end
