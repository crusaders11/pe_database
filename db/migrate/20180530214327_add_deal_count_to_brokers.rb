class AddDealCountToBrokers < ActiveRecord::Migration[5.0]
  def change
    add_column :brokers, :deals_count, :integer
  end
end
