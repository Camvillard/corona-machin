class ListsController < ApplicationController
  before_action :set_item


  def update
  
  end

  def delete
    @item.destroy
  end

  private

    def set_item
      @item = Item.find(params[:id])
    end

end
