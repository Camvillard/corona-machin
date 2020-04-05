class HomeworkDemandsController < ApplicationController
  def new
    @homework = HomeworkDemand.new
    @need = Demand.new
    @list = List.new
    @item = Item.new
  end

  def create
    @homework = HomeworkDemand.new(
      matiere: params["matiere"],
      recurrence: params["recurrence"]
    )
    if !@homework.save
      return
    else
      @need = create_generic_demand(@homework)
      if @need.save
        redirect_to success_path(location: "demand")
      else
        return
      end
    end
  end
end
