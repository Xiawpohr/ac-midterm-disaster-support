class DisastersController < ApplicationController
	before_action :authenticate_user!, only: [:create, :destroy]

	def index
		@disasters = Disaster.all
		if params[:id]
			@disaster = Disaster.find(params[:id])
		else
			@disaster = Disaster.new
		end
	end

	def create
		disaster = Disaster.new(disaster_params)
		disaster.user = current_user
		disaster.save
		redirect_to disasters_path
	end

	def show
		@disaster = Disaster.find(params[:id])
		@comments = @disaster.commets
		@comment = Commet.new
	end

	def update
		disaster = Disaster.find(params[:id])
		disaster.update(disaster_params)
		redirect_to disasters_path
	end

	def destroy
		disaster = Disaster.find(params[:id])
		disaster.destroy
		redirect_to disasters_path
	end

	private 

		def disaster_params
			params.require(:disaster).permit(:title, :content, :category_id)
		end
end
