class HomeworkDemandsController < ApplicationController
  def new
    @homework = HomeworkDemand.new
    @need = Demand.new
    @list = List.new
    @item = Item.new
  end

  def create
    @homework = HomeworkDemand.create!(
      matiere: params["matiere"],
      recurrence: params["recurrence"]
    )
    @need = create_generic_demand(@homework)

    if @need.save!
      redirect_to success_path(location: "homework")
    else
      render :new
    end

  end

end
