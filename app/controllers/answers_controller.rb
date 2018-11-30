class AnswersController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_user,   only: [:destroy]
  def create
    # @course = Course.find(params[:course_id])
    @doubt = Doubt.find(params[:doubt_id])
    @answer = @doubt.answers.build(params[:answer].permit(:ansno, :body))
    @answer.user = current_user
    if @answer.save
      redirect_to doubt_path(@doubt)
    else
      redirect_to root_path
    end
  end

  def edit
		@answer = Answer.find(params[:id])
	end

	def update
		@answer = Answer.find(params[:id])

		if @answer.update(params[:answer].permit(:ansno, :body))
			redirect_to doubt_path(@answer.doubt)
		else
			render 'edit'
		end
  end

  def destroy
    # @course = Course.find(params[:course_id])
    @answer = Answer.find(params[:id])
    @doubt = @answer.doubt
    @answer.destroy
    redirect_to doubt_path(@doubt)
  end

  private
    def correct_user
      # @current_user = User.find(session[:user_id])
      @answer = current_user.answers.find_by(id: params[:id])
      if @answer.nil? and !current_user.admin?
        flash[:alert] = "Not your answer!"
        redirect_to root_path
      end
    end
end
