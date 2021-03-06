# frozen_string_literal: true

# come back and check to see if having show here is a problem
class HousesController < OpenReadController
  before_action :set_house, only: [:show, :update, :destroy]

  # GET /houses
  # shows all houses
  def index
    # @houses = House.all
    @house = current_user.houses

    render json: @houses
  end

  # GET /houses/1
  # get one house
  def show
    render json: @house
  end

  # POST /houses
  def create
    # @house = House.new(house_params)
    @house = current_user.houses.build(house_params)

    if @house.save
      render json: @house, status: :created, location: @house
    else
      render json: @house.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /houses/1
  def update
    @house = current_user.houses.find(params[:id])
    if @house.update(house_params)
      # render json: @house
    else
      render json: @house.errors, status: :unprocessable_entity
    end
  end

  # DELETE /houses/1
  def destroy
    @house = current_user.houses.find(params[:id])
    @house.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_house
      @house = current_user.houses.find(params[:id])
      #House.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def house_params
      params.require(:house).permit(:address1, :address2, :street, :city, :state, :zipcode)
    end
end
