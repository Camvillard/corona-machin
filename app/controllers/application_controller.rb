class ApplicationController < ActionController::Base
  def set_breadcrumbs(step)
    if @breadcrumbs
      @breadcrumbs.push(step)
    else
      @breadcrumbs = [step]
    end
  end

  def create_generic_demand(need)
    Demand.new(
      title: params["title"],
      name: params["name"],
      phone: params["phone"],
      email: params["email"],
      status: "pending",
      message: params["message"],
      need: need,
      tag: Tag.find_by(name: params["tag"])
    )
  end

end
