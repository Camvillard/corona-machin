class PagesController < ApplicationController
  def home

  end

  def styles
  end

  def choices
    step = "j'ai besoin d'aide"
    set_breadcrumbs(step)
  end
end
