require 'spec_helper'

describe Book do
  #it { should have_one :lendee }

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

end