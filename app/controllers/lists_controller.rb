class ListsController < ApplicationController

	def index
		@list_array = List.all
	end

	def show
		@list_view = List.find(params[:id]) 
		@item_array = Item.where(["list_id = :list_id", {list_id: List.find(params[:id])}])
	end
end
