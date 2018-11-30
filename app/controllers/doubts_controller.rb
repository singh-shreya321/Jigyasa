class DoubtsController < ApplicationController
  def create
    @course = Course.find(params[:course_id])
    @doubt = @course.doubts.create(params[:doubt].permit(:title, :body))

    redirect_to doubt_path(@doubt)
  end

  def show
    # @course = Course.find(params[:course_id])
    @doubt = Doubt.find(params[:id])
  end

  def destroy
		# @course = Course.find(params[:course_id])
		@doubt = Doubt.find(params[:id])
    @course = @doubt.course
		@doubt.destroy
		redirect_to course_path(@course)
	end
end
