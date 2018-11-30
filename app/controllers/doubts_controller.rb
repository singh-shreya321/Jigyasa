class DoubtsController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_action :correct_user,       only: [:destroy, :edit, :update]

  def create
    @course = Course.find(params[:course_id])
    @doubt = @course.doubts.build(params[:doubt].permit(:title, :body))
    @doubt.user = current_user
    if @doubt.save
      redirect_to course_path(@course)
    else
      redirect_to root_path
    end
  end

  def show
    # @course = Course.find(params[:course_id])
    @doubt = Doubt.find(params[:id])
  end

  def edit
		@doubt = Doubt.find(params[:id])
	end

	def update
		@doubt = Doubt.find(params[:id])

		if @doubt.update(params[:doubt].permit(:title, :body))
			redirect_to course_path(@doubt.course)
		else
			render 'edit'
		end
  end



  def destroy
		# @course = Course.find(params[:course_id])
		@doubt = Doubt.find(params[:id])
    @course = @doubt.course
		@doubt.destroy
		redirect_to course_path(@course)
	end

  private
    def correct_user
      @doubt = current_user.doubts.find_by(id: params[:id])
      if @doubt.nil? and !current_user.admin?
        flash[:alert] = "Not your post!"
        redirect_to root_path
      end
    end
end
