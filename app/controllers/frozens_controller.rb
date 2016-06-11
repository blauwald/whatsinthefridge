class FrozensController < ApplicationController
  def index
    @frozens = Frozen.all
  end

  def show
    @frozen = Frozen.find(params[:id])
  end

  def new
    @frozen = Frozen.new
  end

  def create
    @frozen = Frozen.new
    @frozen.user_id = params[:user_id]
    @frozen.date_of_purchase = Chronic.parse(params[:date_of_purchase])
    @frozen.grocery_name = params[:grocery_name]
    @frozen.image_of_grocery = params[:image_of_grocery]

    if @frozen.save
      redirect_to "/frozens", :notice => "Frozen created successfully."
    else
      render 'new'
    end
  end

  def edit
    @frozen = Frozen.find(params[:id])
  end

  def update
    @frozen = Frozen.find(params[:id])

    @frozen.user_id = params[:user_id]
    @frozen.date_of_purchase = Chronic.parse(params[:date_of_purchase])
    @frozen.grocery_name = params[:grocery_name]
    @frozen.image_of_grocery = params[:image_of_grocery]

    if @frozen.save
      redirect_to "/frozens", :notice => "Frozen updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @frozen = Frozen.find(params[:id])

    @frozen.destroy

    redirect_to "/frozens", :notice => "Frozen deleted."
  end
end
