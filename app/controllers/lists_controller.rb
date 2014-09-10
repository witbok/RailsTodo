class ListsController < ApplicationController
	def index
		@lists = List.all
	end

	def show
		@list = List.find(params[:id])
		@tasks = Task.where listid: params[:id]
	end

	def create
		@list = List.new(list_params)
		if @list.save
			redirect_to lists_path, flash: {success: "Successfully created list" }
		else
			redirect_to new_list_path, flash: {danger: "Could not save list" }
		end
	end

	def new
		@list = List.new
	end

	private
    def list_params
      params.require(:list).permit(:name, :description)
    end
end
