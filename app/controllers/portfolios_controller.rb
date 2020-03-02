class PortfoliosController < ApplicationController
	before_action :set_portfolio_item, only: [:edit, :update, :show, :destroy]
	layout 'portfolio'
	access all: [:show, :index, :angular], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all
	
	def index
		@portfolio_items = Portfolio.all
	end

	def angular
		@angular_portfolio_items = Portfolio.angular
	end


	def new
		@portfolio_item = Portfolio.new
		3.times { @portfolio_item.technologies.build }
	end

	def create
	    @portfolio_item = Portfolio.new(portfolio_params)

	    respond_to do |format|
	      if @portfolio_item.save
	        format.html { redirect_to portfolios_path, notice: 'Your portfolio item is now live.' }
	        format.json { render :show, status: :created, location: @portfolio_item }
	      else
	        format.html { render :new }
	        format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
	      end
	    end
  	end

  	def edit
  		3.times { @portfolio_item.technologies.build }
  	end

  	def update
	    
	    respond_to do |format|
	      if @portfolio_item.update(portfolio_params)
	        format.html { redirect_to portfolios_path, notice: 'portfolio_item was successfully updated.' }
	        format.json { render :show, status: :ok, location: @portfolio_item }
	      else
	        format.html { render :edit }
	        format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
	      end
	    end
  	end

  	def show
  		# URL request passed to routes.rb
  		# 	get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  		# routes.db create and pass params: 
  		# 	<ActionController::Parameters {"controller"=>"portfolios", "action"=>"show", "id"=>"1"} permitted: false>
  		# 	portfolio_path: portfolios/1
  		
		# find is to query DB, value returned and stored in var @portfolio_item
  		# show method in portfolio controller match with show.html.erb
  		# var @portfolio_item is passed through to show.html.erb

  	end

  	def destroy
  		@portfolio_item.destroy
	    respond_to do |format|
	      format.html { redirect_to portfolios_url, notice: 'Portfolio was successfully destroyed.' }
	      format.json { head :no_content }
	    end
  	end

  	private

  	def portfolio_params
  		params.require(:portfolio).permit(:title, 
  										  :subtitle, 
  										  :body, 
  										  technologies_attributes: [:name]
  										  )
  	end

  	def set_portfolio_item
  		@portfolio_item = Portfolio.find(params[:id])
  	end
end
