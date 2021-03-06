class DemandsController < ApplicationController
  before_action :find_demand, only: %i[show edit]

  def index
    @active = params[:query] ? params["query"] : "all"
    if params["query"] == "all" || params[:query].nil?
      @demands = Demand.all
      @addresses = ErrandDemand.all.map do |demand|
        {
          address: demand.address,
          infoWindow: render_to_string(partial: "info_window", locals: { demand: Demand.find_by(need_id: demand.id) })
        }
      end
    else
      @demands = Demand.where(need_type: params["query"])
      @addresses = ErrandDemand.all
    end
  end

  def show
    if @demand.need_type === "ErrandDemand"
      @list = @demand.need.list
      @items = @list.items
    end
  end

  def success_page
  end

  def take_a_demand
    @demand = Demand.find(params[:demand_id])
    taker_mail = params[:taker_demand]
    @demand.taker_email = taker_mail

    if @demand.save!
      UserMailer.with(demand: @demand).take_a_demand.deliver_now
      redirect_to demands_path
    else
      render :show
    end
  end

  def edit
  end

  def update

  end

  private
    def find_demand
      @demand = Demand.find(params[:id])
    end
end
