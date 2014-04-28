class AddLendeeNameToBook < ActiveRecord::Migration
  def change
    add_column :books, :lendee_name, :string
  end
end
