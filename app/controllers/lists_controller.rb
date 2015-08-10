class ListsController < ApplicationController

	def index
		@list_array = List.all
	end

	def new
		@list = List.new
	end

	def create
		@list = List.new(params[:list])
		if @list.save
			redirect_to root_path
		else
			redirect_to new_list_path
		end
	end

	def edit
		@list = List.find(params[:id])
	end

	def update
		@list = List.find(params[:id])
		if @list.update_attributes(params[:list])
			redirect_to list_path
		else 
			redirect_to edit_list_path
		end
	end

	def destroy
		@list_destroy = List.find(params[:id]).destroy
		redirect_to root_path
	end


	def show
		@list_view = List.find(params[:id]) 
		@item_array = Item.where(["list_id = :list_id", {list_id: List.find(params[:id])}])
	end
end
