class DealsController < ApplicationController
  def index
    @q = Deal.ransack(params[:q])
    @deals = @q.result(:distinct => true).includes(:notes, :industry, :broker).page(params[:page]).per(10)

    render("deals/index.html.erb")
  end

  def show
    @note = Note.new
    @deal = Deal.find(params[:id])

    render("deals/show.html.erb")
  end

  def new
    @deal = Deal.new

    render("deals/new.html.erb")
  end

  def create
    @deal = Deal.new

    @deal.deal_name = params[:deal_name]
    @deal.industry_id = params[:industry_id]
    @deal.broker_id = params[:broker_id]
    @deal.deal_lead = params[:deal_lead]
    @deal.ltm_revenue = params[:ltm_revenue]
    @deal.ltm_ebitda = params[:ltm_ebitda]
    @deal.ioi_enterprise_value = params[:ioi_enterprise_value]
    @deal.ioi_revenue_multiple = params[:ioi_revenue_multiple]
    @deal.ioi_ebitda_multiple = params[:ioi_ebitda_multiple]
    @deal.loi_enterprise_value = params[:loi_enterprise_value]
    @deal.loi_revenue_multiple = params[:loi_revenue_multiple]
    @deal.loi_ebitda_multiple = params[:loi_ebitda_multiple]
    @deal.final_enterprise_value = params[:final_enterprise_value]
    @deal.final_revenue_multiple = params[:final_revenue_multiple]
    @deal.final_ebitda_multiple = params[:final_ebitda_multiple]

    save_status = @deal.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/deals/new", "/create_deal"
        redirect_to("/deals")
      else
        redirect_back(:fallback_location => "/", :notice => "Deal created successfully.")
      end
    else
      render("deals/new.html.erb")
    end
  end

  def edit
    @deal = Deal.find(params[:id])

    render("deals/edit.html.erb")
  end

  def update
    @deal = Deal.find(params[:id])

    @deal.deal_name = params[:deal_name]
    @deal.industry_id = params[:industry_id]
    @deal.broker_id = params[:broker_id]
    @deal.deal_lead = params[:deal_lead]
    @deal.ltm_revenue = params[:ltm_revenue]
    @deal.ltm_ebitda = params[:ltm_ebitda]
    @deal.ioi_enterprise_value = params[:ioi_enterprise_value]
    @deal.ioi_revenue_multiple = params[:ioi_revenue_multiple]
    @deal.ioi_ebitda_multiple = params[:ioi_ebitda_multiple]
    @deal.loi_enterprise_value = params[:loi_enterprise_value]
    @deal.loi_revenue_multiple = params[:loi_revenue_multiple]
    @deal.loi_ebitda_multiple = params[:loi_ebitda_multiple]
    @deal.final_enterprise_value = params[:final_enterprise_value]
    @deal.final_revenue_multiple = params[:final_revenue_multiple]
    @deal.final_ebitda_multiple = params[:final_ebitda_multiple]

    save_status = @deal.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/deals/#{@deal.id}/edit", "/update_deal"
        redirect_to("/deals/#{@deal.id}", :notice => "Deal updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Deal updated successfully.")
      end
    else
      render("deals/edit.html.erb")
    end
  end

  def destroy
    @deal = Deal.find(params[:id])

    @deal.destroy

    if URI(request.referer).path == "/deals/#{@deal.id}"
      redirect_to("/", :notice => "Deal deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Deal deleted.")
    end
  end
end
