class RefrigeratedsController < ApplicationController
  def index
    @refrigerateds = Refrigerated.all
    @users = User.all
  end

  def show
    @refrigerated = Refrigerated.find(params[:id])
  end

  def new
    @refrigerated = Refrigerated.new
  end

  def create
    @refrigerated = Refrigerated.new
    @refrigerated.user_id = current_user.id
    @refrigerated.date_of_experation = Chronic.parse(params[:date_of_experation])
    @refrigerated.date_of_purchase = Chronic.parse(params[:date_of_purchase])
    @refrigerated.grocery_name = params[:grocery_name]
    @refrigerated.image_of_grocery = params[:image_of_grocery]

    if @refrigerated.save
      redirect_to "/refrigerateds", :notice => "Refrigerated created successfully."
    else
      render 'new'
    end
  end

  def edit
    @refrigerated = Refrigerated.find(params[:id])
  end

  def update
    @refrigerated = Refrigerated.find(params[:id])

    @refrigerated.user_id = params[:user_id]
    @refrigerated.date_of_experation = Chronic.parse(params[:date_of_experation])
    @refrigerated.date_of_purchase = Chronic.parse(params[:date_of_purchase])
    @refrigerated.grocery_name = params[:grocery_name]
    @refrigerated.image_of_grocery = params[:image_of_grocery]

    if @refrigerated.save
      redirect_to "/refrigerateds", :notice => "Refrigerated updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @refrigerated = Refrigerated.find(params[:id])

    @refrigerated.destroy

    redirect_to "/refrigerateds", :notice => "Refrigerated deleted."
  end
end
