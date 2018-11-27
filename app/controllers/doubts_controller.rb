class DoubtsController < ApplicationController
  def create
    @course = Course.find(params[:course_id])
    @doubt = @course.doubts.create(params[:doubt].permit(:title, :body))

    redirect_to courses_path(@course)
  end

  def show
    @course = Course.find(params[:course_id])
    @doubt = @course.doubts.find(params[:id])
  end

  def destroy
		@course = Course.find(params[:course_id])
		@doubt = @course.doubts.find(params[:id])
		@doubt.destroy

		redirect_to course_path(@course)
	end
end
