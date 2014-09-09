class ListsController < ApplicationController
	def index
		@lists = List.all
	end

	def show
		@list = List.find(params[:id])
		@tasks = Task.where listid: params[:id]
	end
end
