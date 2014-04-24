class CatsController < ApplicationController

  def index
    @cats = Cat.all
    render :index
  end


  def show
    @cat = Cat.find(params[:id])
    render :show
  end

  def new
    @cat = Cat.new
    render :new
  end

  def create
    @cat = Cat.new(cat_params)
    if @cat.save
      redirect_to cat_url(@cat)
    else
      render :plain, @cat.errors.full_messages
    end

  end

  def edit
    @cat = Cat.find(params[:id])
  end

  def update
    @cat = Cat.find(params[:id])
    if @cat.update_attributes(cat_params)
      redirect_to cat_url(@cat)
    else
      render :plain, @cat.errors.full_messages
    end
  end


  private

  def cat_params
    params[:cat][:age] = params[:cat][:age].to_i
    params.require(:cat).permit(:age, :birth_date, :color, :name, :sex)
  end

end
