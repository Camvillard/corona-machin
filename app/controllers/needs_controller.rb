class NeedsController < ApplicationController
  before_action :set_need, only: %i[show update destroy create_item]
  
  def index
    @needs = Need.all
  end

  def show
    @list = List.new
  end

  def create
    @need = Need.new(need_params)
    @list = List.new(list_params)
    @need.list = @lists
    if @need.save
      redirect_to needs_path
    else
      render :new
    end
  end

  def create_item
    @list = @need.list
    @item = Item.new(item_params)
  end

  def update
    @need.update(need_params)
    redirect_to need_path(@need)
  end

  def delete
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

    def list_params
      params.require(:list).permit!
    end

    def item_params
      params.require(:item).permit!
    end
  
end
