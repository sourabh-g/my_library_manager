require 'spec_helper'

describe Book do
  it { should belong_to :lendee }

  describe 'validations' do
    it 'cannot have nil title' do
      book = Book.new(:title => nil)
      book.should_not be_valid
    end

    it 'cannot have nil author' do
      book = Book.new(:author => nil, :title => 'dummy book')
      book.should_not be_valid
    end

    it 'cannot have blank author' do
      book = Book.new(:author => '', :title => 'dummy book')
      book.should_not be_valid
    end

    it 'cannot have blank title' do
      book = Book.new(:author => '', :title => 'dummy book')
      book.should_not be_valid
    end
  end

  describe '#lendee' do
    context 'has a lendee' do
      it 'returns lendee' do
        book = Book.new
        lendee = Lendee.create

        book.lendee = lendee

        expect(book.lendee).to eql lendee
      end
    end
    context 'doesnt have a lendee' do
      it 'returns NilLendee' do
        book = Book.new

        expect(book.lendee) == NilLendee.instance
      end
    end
  end
end