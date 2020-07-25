class SweetsController < ApplicationController
  def index
    @sweet = Sweet.all.order(created_at: :desc)
  end
  

  
  def new
    @sweet = Sweet.new
  end
  
  def create
    @sweet = Sweet.new(name: params[:name],price: params[:price],genre: params[:genre])
    
    @sweet.save
    redirect_to("/sweets")
  end
  
  def show
    @sweet = Sweet.find(params[:id])
    @reviews = @sweet.reviews
    @review = Review.new
    
  end
  
    def edit
      @sweet = Sweet.find(params[:id])
    end
  
  def update
    @sweet = Sweet.find(params[:id])
    @sweet.name = params[:name]
    @sweet.price = params[:price]
    @sweet.genre = params[:genre]
    @sweet.save
    redirect_to "/sweets"
  end
  
  def destroy
    sweet = Sweet.find(params[:id])
    sweet.destroy
    redirect_to sweets_path
    
  end
end
