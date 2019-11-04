class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @query = params[:query]
    if @query == 'i am going to work right now!'
      return @answer = 'Great!'
    elsif @query.ends_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I dont care, get dressed and go to work!'
    end
  end
end
