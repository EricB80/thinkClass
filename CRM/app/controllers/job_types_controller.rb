class JobTypesController < ApplicationController
  before_filter :load_all_job_types, :only => [:index, :create, :destroy, :show]
  
  def index    
    @job_type = JobType.new
  end
  
  def new
    @job_type = JobType.new
  end
  
  def create
    @job_type = JobType.new(job_type_params)
        if @job_type.save
          redirect_to job_types_path
        else          
          render action: :index
    end
  end
  
  def destroy
    @job_type = JobType.delete(params[:id])
  end
  
  def show
    @job_type = JobType.where(:id => params[:id]).first
  end 
  
  private
  
  def load_all_job_types
    @job_types = JobType.order(description: :asc).load
  end
  
  def job_type_params
    params.require(:job_type).permit(:description)
  end
  
end
