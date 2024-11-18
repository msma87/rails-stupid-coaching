class QuestionsController < ApplicationController
  def answer
    @question = params[:question] # Corrigido para singular
    @answer = coach_response(@question)
  end

  def coach_response(question)
    # Lógica simples para a resposta do coach
    if question == 'i am going to work'
      'Great!'
    elsif question.include?('?')
      'Silly question, get dressed and go to work!'
    else
      'I don’t care, get dressed and go to work!'
    end
  end
end
