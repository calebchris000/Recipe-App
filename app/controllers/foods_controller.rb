# frozen_string_literal: true

class FoodsController < ApplicationController
<<<<<<< HEAD
=======
  before_action :set_food, only: %i[show edit update destroy]
>>>>>>> e2b3c6dd324b4fd019bd2c360391a4e711c1eb5e

  # GET /foods or /foods.json
  def index
    # @foods = Food.all
    @foods = Food.accessible_by(current_ability)
  end

  # GET /foods/1 or /foods/1.json
  def show; end

  # GET /foods/new
  def new
    @food = Food.new
  end

  # GET /foods/1/edit
<<<<<<< HEAD
  def edit
    @current_food = Food.find(params[:id])
  end
=======
  def edit; end
>>>>>>> e2b3c6dd324b4fd019bd2c360391a4e711c1eb5e

  # POST /foods or /foods.json
  def create
    @food = Food.new(food_params.merge(user_id: current_user.id))

    if @food.save
<<<<<<< HEAD
      redirect_to action: "index", notice: "Food was successfully created."
=======
      redirect_to action: 'index', notice: 'Food was successfully created.'
>>>>>>> e2b3c6dd324b4fd019bd2c360391a4e711c1eb5e
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /foods/1 or /foods/1.json
  def update
<<<<<<< HEAD
    @food = Food.find(params[:id])
    Rails.logger.info("Current food is #{@current_food}")
    if @food.update(food_params)
      redirect_to foods_path
    else
      render :edit
=======
    respond_to do |format|
      if @food.update(food_params)
        format.html { redirect_to food_url(@food), notice: 'Food was successfully updated.' }
        format.json { render :show, status: :ok, location: @food }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
>>>>>>> e2b3c6dd324b4fd019bd2c360391a4e711c1eb5e
    end
  end

  # DELETE /foods/1 or /foods/1.json
  def destroy
    @food = Food.find(params[:id])
    @food.destroy

<<<<<<< HEAD
    redirect_to foods_path
=======
    respond_to do |format|
      format.html { redirect_to foods_url, notice: 'Food was successfully destroyed.' }
      format.json { head :no_content }
    end
>>>>>>> e2b3c6dd324b4fd019bd2c360391a4e711c1eb5e
  end

  private

  # Only allow a list of trusted parameters through.
  def food_params
    params.require(:food).permit(:id, :name, :measurement_unit, :quantity, :price)
  end
end
