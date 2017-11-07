class fieldsController < ApplicationController
  def index
    @fields = field.all
  end

  def show
    @field = field.find(params[:id])
  end

  def new
    @field = field.new
  end

  def edit
    @field = field.find(params[:id])
  end

  def create
    @field = field.new(field_params)

    if @field.save
      redirect_to @field
    else
      render 'new'
    end
  end

  def update
    @field = field.find(params[:id])

    if @field.update(field_params)
      redirect_to @field
    else
      render 'edit'
    end
  end

  def destroy
    @field = field.find(params[:id])
    @field.destroy

    redirect_to fields_path
  end

  private
  def field_params
    params.require(:field).permit(:title, :text)
  end
end
