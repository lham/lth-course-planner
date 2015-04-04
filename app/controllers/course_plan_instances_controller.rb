class CoursePlanInstancesController < ApplicationController
  before_action :set_course_plan_instance, only: [:show, :edit, :update, :destroy]

  # GET /course_plan_instances
  def index
    @course_plan_instances = CoursePlanInstance.all
  end

  # GET /course_plan_instances/1
  def show
  end

  # GET /course_plan_instances/new
  def new
    @course_plan_instance = CoursePlanInstance.new
  end

  # GET /course_plan_instances/1/edit
  def edit
  end

  # POST /course_plan_instances
  def create
    @course_plan_instance = CoursePlanInstance.new(course_plan_instance_params)

    if @course_plan_instance.save
      redirect_to @course_plan_instance, notice: 'Course plan instance was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /course_plan_instances/1
  def update
    if @course_plan_instance.update(course_plan_instance_params)
      redirect_to @course_plan_instance, notice: 'Course plan instance was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /course_plan_instances/1
  def destroy
    @course_plan_instance.destroy
    redirect_to course_plan_instances_url, notice: 'Course plan instance was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_plan_instance
      @course_plan_instance = CoursePlanInstance.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def course_plan_instance_params
      params.require(:course_plan_instance).permit(:course_plan_id, :year)
    end
end
