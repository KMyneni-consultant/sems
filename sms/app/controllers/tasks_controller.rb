class TasksController < InheritedResources::Base

  private

    def task_params
      params.require(:task).permit(:description)
    end
end

