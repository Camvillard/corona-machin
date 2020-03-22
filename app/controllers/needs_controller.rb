class NeedsController < ApplicationController
  before_action :set_need, only: %i[show update destroy]
  
  def index
    @needs = Need.all
  end

  def show
    @list = List.new
  end

  def create
    @need = Need.new(need_params)
    @list = List.new
    @need.list = @lists
    if @need.save
      redirect_to needs_path
    else
      render :new
    end
  end

  def update
    @need.update(need_params)
    redirect_to need_path(@need)
  end

  def destroy
    @need.destroy
    redirect_to needs_path
  end

  private

    def set_need
      @need = Need.find(params[:id])
    end

    def need_params
      params.require(:need).permit!
    end
  
end