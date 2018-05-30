class CreateBrokers < ActiveRecord::Migration
  def change
    create_table :brokers do |t|
      t.string :name
      t.string :company
      t.string :email
      t.string :phone

      t.timestamps

    end
  end
end
