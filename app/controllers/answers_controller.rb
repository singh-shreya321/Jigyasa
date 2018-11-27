class AnswersController < ApplicationController
  def create
    @course = Course.find(params[:course_id])
    @doubt = @course.find[params[:doubt_id]]
    @answer = @course.@doubt.answers.create(params[:answer].permit(:ansno, :body))
    redirect_to courses_path(@course)
  end

  # def destroy
  #   @course = Course.find(params[:course_id])
  #   @doubt = @course.doubts.find(params[:id])
  #   @doubt.destroy
  #
  #   redirect_to course_path(@course)
  # end
end
