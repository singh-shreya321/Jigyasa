class CoursesController < ApplicationController
    def index
      @courses = Course.all
    end

    def new
      @course = Course.new
    end

    def create;
      @course = Course.new(course_params)
      if @course.save
        puts "hi"
        redirect_to @course
      else
        render 'new'
      end
    end

    def show
      @course = Course.find(params[:id])
    end

    def edit
      @course = Course.find(params[:id])
    end

    def update
      @course = Course.find(params[:id])

      if @course.update(params[:course].permit(:courseid, :name))
        redirect_to @course
      else
        render 'edit'
      end
    end

    def destroy
      @course.destroy
      redirect_to_root_path
    end

    private
      def course_params
        params.require(:course).permit(:courseid, :name)
      end
end
