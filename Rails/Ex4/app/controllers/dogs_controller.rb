class DogsController < ApplicationController
  before_action :set_dog, only: [:show, :update, :destroy]

  def json_response(object, status = :ok)
    render json: object, status: status
  end
  # GET /dogs
  def index
    @dogs = Dog.all
    json_response(@dogs)
  end

  # POST /dogs
  def create
    @dog = Dog.create!(dog_params)
    json_response(@dog, :created)
  end

  # GET /dogs/:id
  def show
    json_response(@dog)
  end

  # PUT /dogs/:id
  def update
    @dog.update(dog_params)
    head :no_content
  end

  # DELETE /dogs/:id
  def destroy
    @dog.destroy
    head :no_content
  end

  private

  def dog_params
    # whitelist params
    params.permit(:name, :weight, :category, :birthday, :passing_date)

 
  end

  def set_dog
    @dog = dog.find(params[:id])
  end
end