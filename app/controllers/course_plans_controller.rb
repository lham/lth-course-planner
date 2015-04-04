class CoursePlansController < ApplicationController
  before_action :set_course_plan, only: [:show, :edit, :update, :destroy]

  # GET /course_plans
  def index
    @course_plans = CoursePlan.all
  end

  # GET /course_plans/1
  def show
  end

  # GET /course_plans/new
  def new
    @course_plan = CoursePlan.new
  end

  # GET /course_plans/1/edit
  def edit
  end

  # POST /course_plans
  def create
    @course_plan = CoursePlan.new(course_plan_params)

    if @course_plan.save
      redirect_to @course_plan, notice: 'Course plan was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /course_plans/1
  def update
    if @course_plan.update(course_plan_params)
      redirect_to @course_plan, notice: 'Course plan was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /course_plans/1
  def destroy
    @course_plan.destroy
    redirect_to course_plans_url, notice: 'Course plan was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_plan
      @course_plan = CoursePlan.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def course_plan_params
      params.require(:course_plan).permit(:programme_id, :name, :abbr, :type)
    end
end
