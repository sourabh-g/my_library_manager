class CreateLendees < ActiveRecord::Migration
  def change
    create_table :lendees do |t|
      t.string :name

      t.timestamps
    end
  end
end
