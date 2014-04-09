class QuizzesController < ApplicationController
  def index
    @quiz = Quiz.new
  end
  
  def create
    @quiz = Quiz.new
    @questions = Question.new
    @answers = Answer.new
    if @quiz.save
      render "questions/index"
    else
      render "index"
    end
  end
    
  private
  
  def new_quiz_params
    params.require(:quiz).permit(:location, :no_rounds, :master, :name, :description)
  end
end
