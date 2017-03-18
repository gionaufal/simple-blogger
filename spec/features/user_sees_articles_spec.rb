require 'rails_helper'

feature 'User visits root path' do
  scenario 'and sees articles' do
    article = create(:article)

    visit root_path

    expect(page).to have_content article.title
    expect(page).to have_content article.body
  end
end
