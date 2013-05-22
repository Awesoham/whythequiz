class QuestionsController < ApplicationController
	load_and_authorize_resource #CanCan FTW!
	def index
		@questions = Question.all
	end
	
	def show
		@question = Question.find(params[:id])	
	end

	def create
			
	end

	def new
			
	end

	def update
		
	end

	def destroy
		
	end
end
