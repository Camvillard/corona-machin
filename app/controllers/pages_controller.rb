class PagesController < ApplicationController
  def home

  end

  def styles
  end

  def choices
    @breadcrumbs = []
  end

  def demands
    @demands = Demand.all
  end
end
