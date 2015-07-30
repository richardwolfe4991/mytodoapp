class ListsController < ApplicationController

	def index
		@list_array = List.all
	end

	def show
		@list_array = List.find(params[:id]) 
	end
end
