class AddLendeeIdToBook < ActiveRecord::Migration
  def change
    add_column :books, :lendee_id, :integer
  end
end
