require 'rails_helper'

feature 'User creates articles' do
  scenario 'successfully' do
    article = build(:article)

    visit root_path

    click_on 'New article'

    fill_in 'Title', with: article.title
    fill_in 'Body', with: article.body

    click_on 'Submit'

    expect(page).to have_content article.title
  end
end
