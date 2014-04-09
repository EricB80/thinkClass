class QuestionsController < ApplicationController
  def create
    @question = Question.new(new_answer_params)
    @answers = Answer.new(new_answer_params)
  end
  
  def new 
    @question = Question.new
    @answers = Answer.new
  end
  
  private
  def new_question_params
    params.require(:question).permit(:round, :question_text)
  end
  
end
