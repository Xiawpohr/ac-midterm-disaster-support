class CommetsController < ApplicationController
	before_action :authenticate_user!, only: [:create, :destroy]

	def create
		disaster = Disaster.find(params[:disaster_id])
		comment = Commet.new(comment_params)
		comment.disaster = disaster
		comment.user = current_user
		comment.save
		redirect_to disaster_path(disaster)
	end

	def destroy
		disaster = Disaster.find(params[:disaster_id])
		comment = Commet.find(params[:id])
		comment.destroy
		redirect_to disaster_path(disaster)
	end

	private

		def comment_params
			params.require(:commet).permit(:speaker, :content, :disaster_id)
		end
end
