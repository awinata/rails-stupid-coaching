class QuestionsController < ApplicationController

  def ask
  end

  def answer
    return @answer = coach_answer(params[:question])
  end

  def coach_answer(your_message)
    if your_message == "I am going to work"
      return "Great!"
    elsif your_message.end_with?("?")
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  # def coach_answer_enhanced(your_message)
  #   # TODO: return coach answer to your_message, with additional custom rules of yours!
  #   if your_message == "I AM GOING TO WORK RIGHT NOW!"
  #     return ""
  #   elsif !your_message.empty? && your_message == your_message.upcase
  #     return "I can feel your motivation! #{coach_answer(your_message)}"
  #   else
  #     return coach_answer(your_message)
  #   end
  # end

end
