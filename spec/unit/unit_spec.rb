# location: spec/unit/unit_spec.rb
require 'rails_helper'



RSpec.describe Book, type: :model do

  context 'validation test' do
    it 'ensures title presence' do
      book = Book.new(author: 'author', price: 123, published: '0009-01-22').save
      expect(book).to eq(false)
    end
  end
end

RSpec.describe Book, type: :model do

  context 'validation test' do
    it 'ensures author presence' do
      book = Book.new(title: 'Title', price: 123, published: '0009-01-22').save
      expect(book).to eq(false)
    end
  end
end

RSpec.describe Book, type: :model do

  context 'validation test' do
    it 'ensures price presence' do
      book = Book.new(title: 'Title', author: 'username', published: '0009-01-22').save
      expect(book).to eq(false)
    end
  end
end

RSpec.describe Book, type: :model do

  context 'validation test' do
    it 'ensures published presence' do
      book = Book.new(title: 'Title', author: 'username', price: 123).save
      expect(book).to eq(false)
    end
  end
end

