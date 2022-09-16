# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'Harry potter'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: 12
    fill_in 'Published', with: '9/01/22'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('Harry potter')
  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'Harry potter 2'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: 12
    fill_in 'Published', with: '9/01/22'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('JK Rowling')
  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'Harry potter 3'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: 12
    fill_in 'Published', with: '9/01/22'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('12')
  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'Harry potter 4'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: 12
    fill_in 'Published', with: '9/01/22'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('0009-01-22')
  end
end