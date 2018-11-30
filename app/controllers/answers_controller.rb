class AnswersController < ApplicationController
  def create
    # @course = Course.find(params[:course_id])
    @doubt = Doubt.find(params[:doubt_id])
    @answer = @doubt.answers.create(params[:answer].permit(:ansno, :body))

    redirect_to doubt_path(@doubt)
  end

  def destroy
    # @course = Course.find(params[:course_id])
    @answer = Answer.find(params[:id])
    @doubt = @answer.doubt
    @answer.destroy
    redirect_to doubt_path(@doubt)
  end
end
