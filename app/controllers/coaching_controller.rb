class CoachingController < ApplicationController
  def ask
  end

  def answer
    @input = params[:query]
    @answer = coach_answer(@input)
  end

private

def coach_answer(your_message)
  if your_message.end_with?("?") == true
    return "Silly question, get dressed and go to work!"
  elsif your_message == "I am going to work right now!"
    return "Good boy!"
  else
    return "I don't care, get dressed and go to work!"
  end
end

end
