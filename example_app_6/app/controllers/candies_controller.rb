class CandiesController < ApplicationController

  def index
    @candies = Candy.all
  end

  def show
    @candy = Candy.find(params[:id])
  end

  def new
    @candy = Candy.new
  end

  def edit
    @candy = Candy.find(params[:id])
  end

  def create
    @candy = Candy.new(candy_params)

    if @candy.save
      redirect_to @candy
    else
      render 'new'
    end
  end

  def update
    @candy = Candy.find(params[:id])

    if @candy.update(candy_params)
      redirect_to @candy
    else
      render 'edit'
    end
  end

  def destroy
    @candy = Candy.find(params[:id])
    @candy.destroy

    redirect_to candies_path
  end

  private
  def candy_params
    params.require(:candy).permit(:name, :description)
  end

end
