class UserErrorsController < ApplicationController
  before_action :set_user_error, only: [:show, :update, :destroy]

  # GET /user_errors
  def index
    render json: UserError.where(session_id: params[:session_id])
  end

  # GET /user_errors/1?session_id=12341342
  def show
    render json: @user_error.where(session_id: params[:session_id])
  end

  # POST /user_errors
  def create
    @user_error = UserError.new(user_error_params)
    if @user_error.save
      render json: @user_error, status: :created, location: @user_error
    else
      render json: @user_error.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_errors/1
  def update
    if @user_error.update(user_error_params)
      render json: @user_error
    else
      render json: @user_error.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_errors/1
  def destroy
    @user_error.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_error
      @user_error = UserError.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_error_params
      params.permit(:session_id, :message, :line_number, :file, :stack_url)
    end
end
