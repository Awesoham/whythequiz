class HomeController < ApplicationController
  def index
    @users = User.all
    @quizzes = Quiz.all
  end
end
