class PagesController < ApplicationController
  def home

  end

  def styles
  end

  def choices
    if params[:choice] == "need"
      step = "j'ai besoin d'aide"
    else
      step = "je peux offrir mon aide"
    end
    set_breadcrumbs(step)
  end
end
