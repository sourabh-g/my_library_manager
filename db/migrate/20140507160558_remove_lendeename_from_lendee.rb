class RemoveLendeenameFromLendee < ActiveRecord::Migration
  def up
    remove_column :lendees, :lendee_name
  end

  def down
    add_column :lendees, :lendee_name, :text
  end
end
