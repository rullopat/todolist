class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to action: 'show', id: @list.id
    else
      render action: 'new'
    end
  end

  def list_params
    params.require(:list).permit(:name)
  end
end
