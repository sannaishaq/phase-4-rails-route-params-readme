class Cheese < ApplicationRecord
  
  def summary
    "#{self.name}: $#{self.price}"
  end

  def index
    cheeses = Cheese.all
    render json: cheeses
  end 

  def show
    cheese = Cheese.find(params[:id])
    render json: cheese
  end
  
end
