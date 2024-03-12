class MonumentsController < ApplicationController
  def index
    @monuments = Monument.all
    @monument = Monument.new
  end

  def show
    @monument = Monument.find(params[:id])
  end

  def new
    @monuments = Monument.new
  end

  def edit
  end

  def create
    @monuments = Monument.new(monuments_params)

    if @monuments.save
      redirect_to @monuments
    else
      render 'new'
    end
  end

  def update
    if @monument.update(monument_params)
      redirect_to @monument, notice: 'Monument was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def destroy
    @monuments = Monument.find(params[:id])
    @monuments.destroy

    redirect_to monuments_path
  end

  def monuments_params
    params.require(:monuments).permit(:name, :description)
  end
end
