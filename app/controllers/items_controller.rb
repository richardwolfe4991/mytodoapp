class ItemsController < ApplicationController

	def new
		@item = Item.new
		@list = List.find params[:list_id]
	end

	def create
		@list = List.find(params[:list_id])
		@item = Item.new(params[:item])
		@item.list_id = @list.id
		logger.error("HOLY: #{@list.id}")
		if @item.save
			redirect_to list_path(:id => @list.id)
		else
			redirect_to new_list_item_path
		end
	end

	def show
	end
end
