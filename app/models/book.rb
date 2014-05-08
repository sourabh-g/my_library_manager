class Book < ActiveRecord::Base
  attr_accessible :title ,:author,:lendee_id
  belongs_to :lendee
  validates :title, :presence => true
  validates :author, :presence => true

  def lendee
    super || NilLendee.instance
  end

end
