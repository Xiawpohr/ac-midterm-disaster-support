class DisastersController < ApplicationController
	before_action :authenticate_user!, only: [:create, :destroy]

	def index
		@disasters = Disaster.all
		@disaster = Disaster.new
	end

	def create
		disaster = Disaster.new(disaster_params)
		disaster.user = current_user
		disaster.save
		redirect_to disasters_path
	end

	def show
		@disaster = Disaster.find(params[:id])
		@comments = Commet.all
		@comment = Commet.new
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
