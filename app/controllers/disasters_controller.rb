class DisastersController < ApplicationController
	def index
		@disasters = Disaster.all
		@disaster = Disaster.new
	end

	def create
		disaster = Disaster.new(disaster_params)
		disaster.save
		redirect_to disasters_path
	end

	def show
		@disaster = Disaster.find(params[:id])
		@comments = Commet.all
		@comment = Commet.new
	end

	private 

		def disaster_params
			params.require(:disaster).permit(:title, :content, :category_id)
		end
end
