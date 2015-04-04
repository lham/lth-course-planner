class CourseInstancesController < ApplicationController
  before_action :set_course_instance, only: [:show, :edit, :update, :destroy]

  # GET /course_instances
  def index
    @course_instances = CourseInstance.all
  end

  # GET /course_instances/1
  def show
  end

  # GET /course_instances/new
  def new
    @course_instance = CourseInstance.new
  end

  # GET /course_instances/1/edit
  def edit
  end

  # POST /course_instances
  def create
    @course_instance = CourseInstance.new(course_instance_params)

    if @course_instance.save
      redirect_to @course_instance, notice: 'Course instance was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /course_instances/1
  def update
    if @course_instance.update(course_instance_params)
      redirect_to @course_instance, notice: 'Course instance was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /course_instances/1
  def destroy
    @course_instance.destroy
    redirect_to course_instances_url, notice: 'Course instance was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_instance
      @course_instance = CourseInstance.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def course_instance_params
      params.require(:course_instance).permit(:year, :education_board, :department, :suitable_exchange, :language, :required_knowledge, :assumed_knowledge, :limited_participants, :mandatory, :allowed_from_year, :included_in_year, :study_period)
    end
end
