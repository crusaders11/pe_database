class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :deal_name
      t.integer :industry_id
      t.integer :broker_id
      t.string :deal_lead
      t.string :ltm_revenue
      t.string :ltm_ebitda
      t.string :ioi_enterprise_value
      t.string :ioi_revenue_multiple
      t.string :ioi_ebitda_multiple
      t.string :loi_enterprise_value
      t.string :loi_revenue_multiple
      t.string :loi_ebitda_multiple
      t.string :final_enterprise_value
      t.string :final_revenue_multiple
      t.string :final_ebitda_multiple

      t.timestamps

    end
  end
end
