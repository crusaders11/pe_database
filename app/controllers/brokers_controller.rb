class BrokersController < ApplicationController
  def index
    @brokers = Broker.all

    render("brokers/index.html.erb")
  end

  def show
    @broker = Broker.find(params[:id])

    render("brokers/show.html.erb")
  end

  def new
    @broker = Broker.new

    render("brokers/new.html.erb")
  end

  def create
    @broker = Broker.new

    @broker.name = params[:name]
    @broker.company = params[:company]
    @broker.email = params[:email]
    @broker.phone = params[:phone]

    save_status = @broker.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/brokers/new", "/create_broker"
        redirect_to("/brokers")
      else
        redirect_back(:fallback_location => "/", :notice => "Broker created successfully.")
      end
    else
      render("brokers/new.html.erb")
    end
  end

  def edit
    @broker = Broker.find(params[:id])

    render("brokers/edit.html.erb")
  end

  def update
    @broker = Broker.find(params[:id])

    @broker.name = params[:name]
    @broker.company = params[:company]
    @broker.email = params[:email]
    @broker.phone = params[:phone]

    save_status = @broker.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/brokers/#{@broker.id}/edit", "/update_broker"
        redirect_to("/brokers/#{@broker.id}", :notice => "Broker updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Broker updated successfully.")
      end
    else
      render("brokers/edit.html.erb")
    end
  end

  def destroy
    @broker = Broker.find(params[:id])

    @broker.destroy

    if URI(request.referer).path == "/brokers/#{@broker.id}"
      redirect_to("/", :notice => "Broker deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Broker deleted.")
    end
  end
end
