ActiveAdmin.register Deal do

 permit_params :deal_name, :industry_id, :broker_id, :deal_lead, :ltm_revenue, :ltm_ebitda, :ioi_enterprise_value, :ioi_revenue_multiple, :ioi_ebitda_multiple, :loi_enterprise_value, :loi_revenue_multiple, :loi_ebitda_multiple, :final_enterprise_value, :final_revenue_multiple, :final_ebitda_multiple
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
