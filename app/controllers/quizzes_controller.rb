class QuizzesController < ApplicationController
	load_and_authorize_resource #CanCan FTW!
	def index
		@quizzes = Quiz.all
	end
	
	def show
		@quiz = Quiz.find(params[:id])	
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

