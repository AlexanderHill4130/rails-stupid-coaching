class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question].capitalize
    @answer = coach_answer(@question)
  end

  def coach_answer(your_question)
    if your_question[-1] == '?'
      'Silly question, get dressed and go to work!'
    elsif your_question == 'I am going to work'
      'Great!'
    else
      'I dont care, get dressed and go to work!'
    end
  end
end
