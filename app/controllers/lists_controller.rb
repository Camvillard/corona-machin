class ListsController < ApplicationController
  before_action :set_item


  def update
    @item.update(params_item)
  end

  def delete
    @item.destroy
  end

  private

    def set_item
      @item = Item.find(params[:id])
    end

    def params_item
      params.require(:item).permit!
    end

end
