require 'date'
require_relative '../classes/label'
require_relative '../classes/book'

describe Label do
  context 'When testing the Label class' do
    book = Book.new('The Universe', 'publisher', 'bad', '2022/3/14') # rubocop:todo Lint/UselessAssignment
    label = Label.new('Book-label', 'Yellow')

    it 'Should validate the label title' do
      expect(label.title).to eq 'Book-label'
    end

    it 'Should validate the label title' do
      expect(label.color).to eq 'Yellow'
    end
  end
end
