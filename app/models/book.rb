class Book < ActiveRecord::Base
  attr_accessible :title ,:author

  has_one :lendee

  validates :title, :presence => true
  validates :author, :presence => true
end
