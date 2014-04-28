class Book < ActiveRecord::Base
  attr_accessible :title ,:author,:lendee_name

  validates :title, :presence => true
  validates :author, :presence => true
end
