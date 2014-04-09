class AnswerController < ApplicationController
  def new
    @answer = Answer.new(new_answer_params)
  end

  def index
    @answers = Answer
  end
  
  def create
    @answers = Answer.new
  end
  
  private
  def new_anwer_params
    params.require(:answer).permit(:question_id, :ans_no, :ans_text)
  end
end
