class ItemsController < ApplicationController
 def index
  	@items = Item.all
  end

  def show
  	@item = Item.find(params[:id])
  end

  def new
  	@item = Item.new
  end

  def create
  	@item = Item.new(item_params)
  	if @item.save
  		redirect_to items_path
	else
		render :new
	end
  end

  def edit
  	@item = Item.find(params[:id])
  end

  def update
  	@item = Item.find(params[:id])
  	if @item.update(item_params)
  		redirect_to item_path(@item) 
	else
		render :edit
	end
  end

  def destroy
  	Item.find(params[:id]).destroy
  	redirect_to items_path
  end

  private

  def item_params
  	params.require(:item).permit(:name, :description, :list_id)
  end
end