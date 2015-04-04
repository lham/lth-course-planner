Rails.application.routes.draw do
  resources :course_instances
  resources :courses
  resources :course_plan_instances
  resources :course_plans
  resources :programmes

  root 'programmes#index'
end
