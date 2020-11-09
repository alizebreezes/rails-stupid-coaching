class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question] == 'I am going to work right now!'
      @question = 'Great!'
    elsif params[:question].include?('?')
      @question = 'Silly question, get dressed and go to work!'
    else
      @question = "I don't care, get dressed and go to work!"
    end
  end
end
