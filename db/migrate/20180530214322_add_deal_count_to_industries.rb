class AddDealCountToIndustries < ActiveRecord::Migration[5.0]
  def change
    add_column :industries, :deals_count, :integer
  end
end
