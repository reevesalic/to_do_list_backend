class API::V1:TasksController < ApplicationController

     def index
          @tasks = Task.all
          render json: @tasks, status: 200
     end

     def show
          @task = Task.find(params[:id])
          render json: @tasks, status: 200
     end

     def create
          @task = Task.create(task_params)
          render json: @tasks, status: 200
     end

     def update
          @task = Task.find(params[:id])
          @task.update(task_params)
          render json: {@taskId: @task.id}
     end

     def destroy
          @task = Task.find(params[:id])
          @task.delete
          render json: @tasks, status: 200
     end
     private
     def task_params
          params.require(:note).permit(:category)
     end
end
