class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :deal
      t.string :date
      t.string :notes
      t.integer :deals_id

      t.timestamps

    end
  end
end
