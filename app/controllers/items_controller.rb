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

	def edit
		@list = List.find(params[:list_id])
		@item = Item.find(params[:id])
	end

	def update
		@list = List.find(params[:list_id])
		@item = Item.find(params[:id])
		if @item.update_attributes(params[:item])
			redirect_to list_item_path
		else 
			redirect_to edit_list_item_path
		end
	end

	def show
		@list = List.find(params[:list_id])
		@item = Item.find(params[:id])
	end


	def destroy
		@list = List.find(params[:list_id])
		@item = Item.find(params[:id])
		@item.list_id = @list.id
		@item.destroy
		redirect_to list_path(:id => @list.id)
	end
end
