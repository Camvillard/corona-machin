class PagesController < ApplicationController
  def home

  end

  def styles
  end

  def choices
    step = "j'ai besoin d'aide"
    set_breadcrumbs(step)
  end

  def demands
    if params[:query] == "errands"
      @demands = Demand.where(need_type: "ErrandDemand")
    else
      @demands = Demand.all
    end
  end

end
