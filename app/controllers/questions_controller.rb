# frozen_string_literal: true

# for good style
class QuestionsController < ApplicationController
  def ask; end

  def answer
    if params[:question].downcase == 'i am going to work right now!'
      @answers = ''
    elsif params[:question].end_with?('?')
      @answers = 'Silly question, get dressed and go to work!'
    elsif params[:question]
      @answers = "I don\'t care, get dressed and go to work!"
    end
  end
end
