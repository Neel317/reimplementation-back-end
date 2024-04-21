class Api::V1::SubmittedContentController < ApplicationController

  # Get /api/v1/submit_content
  def index
    @submission_record = SubmissionRecord.all
    render json: @submission_record, status: :ok
  end

  def show
    @submission_record = SubmissionRecord.find(params[:id])
    render json: @submission_record, status: :ok
  rescue ActiveRecord::RecordNotFound => e
    render json: { error: e.message }, status: :not_found
  end
  
  def create
    @submission_record = SubmissionRecord.create(submitted_content_params)
    if @submission_record.save
      render json: @submission_record, status: :created
    else
      render json: @submission_record.errors, status: :unprocessable_entity
    end
  end

  def update
    @submission_record = SubmissionRecord.find(params[:id])
    if @submission_record.update(submitted_content_params)
      render json: @submission_record, status: :ok
    else
      render json: @submission_record.errors, status: :unprocessable_entity
    end
  rescue ActiveRecord::RecordNotFound => e
    render json: { error: e.message }, status: :not_found
  end

  def destroy
    @submission_record = SubmissionRecord.find(params[:id])
    @submission_record.destroy
    render json: { message: 'Record successfully deleted' }, status: :ok
  rescue ActiveRecord::RecordNotFound => e
    render json: { error: e.message }, status: :not_found
  end




  private
  
  def submitted_content_params
    params.require(:submitted_content).permit(:id, :content, :operation, :team_id, :user, :assignment_id)
  end
end
