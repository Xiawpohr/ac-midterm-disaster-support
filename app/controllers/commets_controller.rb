class CommetsController < ApplicationController
	def create
		disaster = Disaster.find(params[:disaster_id])
		comment = Commet.new(comment_params)
		comment.disaster = disaster
		comment.save
		redirect_to disaster_path(disaster)
	end

	private

		def comment_params
			params.require(:commet).permit(:speaker, :content, :disaster_id)
		end
end
