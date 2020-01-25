class GeneralController < ApplicationController

	def index
		@entries =Entry.all
	end

	def new

	end

	
end
