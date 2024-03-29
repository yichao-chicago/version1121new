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
    @item = Item.new
    @item.list_id = params[:list_id]
    @item.star = params[:star]
    @item.store_link = params[:store_link]
    @item.description = params[:description]
    @item.status = params[:status]

    if @item.save
      redirect_to "/items", :notice => "Item created successfully."
    else
      render 'new'
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])

    @item.list_id = params[:list_id]
    @item.star = params[:star]
    @item.store_link = params[:store_link]
    @item.description = params[:description]
    @item.status = params[:status]

    if @item.save
      redirect_to "/items", :notice => "Item updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @item = Item.find(params[:id])

    @item.destroy

    redirect_to "/items", :notice => "Item deleted."
  end
end
