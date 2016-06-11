class MyGroceriesController < ApplicationController
  def index
    @my_groceries = MyGrocery.all
  end

  def show
    @my_grocery = MyGrocery.find(params[:id])
  end

  def new
    @my_grocery = MyGrocery.new
  end

  def create
    @my_grocery = MyGrocery.new
    @my_grocery.frozen_id = params[:frozen_id]
    @my_grocery.refrigerated_id = params[:refrigerated_id]
    # @my_grocery.user_id = params[:user_id]

    if @my_grocery.save
      redirect_to "/my_groceries", :notice => "My grocery created successfully."
    else
      render 'new'
    end
  end

  def edit
    @my_grocery = MyGrocery.find(params[:id])
  end

  def update
    @my_grocery = MyGrocery.find(params[:id])

    @my_grocery.frozen_id = params[:frozen_id]
    @my_grocery.refrigerated_id = params[:refrigerated_id]
    @my_grocery.user_id = params[:user_id]

    if @my_grocery.save
      redirect_to "/my_groceries", :notice => "My grocery updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @my_grocery = MyGrocery.find(params[:id])

    @my_grocery.destroy

    redirect_to "/my_groceries", :notice => "My grocery deleted."
  end
end
