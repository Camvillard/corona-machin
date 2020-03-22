class ApplicationController < ActionController::Base
  def set_breadcrumbs(step)
    if @breadcrumbs
      @breadcrumbs.push(step)
    else
      @breadcrumbs = [step]
    end
  end

end
