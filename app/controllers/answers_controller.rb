class AnswersController < ApplicationController
  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    @answer.save
  end

  private

  def answer_params
    params.require(:answer).permit(:title, :content)
  end
end
