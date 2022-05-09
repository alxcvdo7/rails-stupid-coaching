class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # @questions = ["I am going to work": "Great!"]
    # ['if ?': 'Silly question, get dressed and go to work!']
    # ["anything else": "I don't care, get dressed and go to work!]
    @question = params[:question]
    # @question = ["I am going to work", "?"]

    @answer = if @question == 'I am going to work'
                'Great!'
              elsif @question.end_with?('?')
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
