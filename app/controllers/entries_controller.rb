class EntriesController < ApplicationController

	def new
		@entries = Entry.new
	end

	def create
		@entries = Entry.new(entry_params)
		
		if @entries.save
			redirect_to @entries
		else
			render 'new'
		end
	end

	def edit
		@entries = Entry.find(params[:id])
	end

	def update
		@entries = Entry.find(params[:id])

		if @entries.update(entry_params)
			redirect_to @entries
		else 
			render 'edit'
		end
	end

	def destroy
		@entries = Entry.find(params[:id])
		@entries.destroy

		redirect_to entries_path
	end

	def show
		@entries = Entry.find(params[:id])
	end

	def index
		@entries = Entry.all
	end

	private 
		def entry_params
			params.require(:entries).permit(:title,:writing)
		end
end
