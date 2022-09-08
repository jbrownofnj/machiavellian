class FundingRequestsController < ApplicationController
  before_action :set_funding_request, only: %i[ show edit update destroy ]

  # GET /funding_requests or /funding_requests.json
  def index
    @funding_requests = FundingRequest.all
    render json: @funding_requests
  end

  # GET /funding_requests/1 or /funding_requests/1.json
  def show
  end

  # GET /funding_requests/new
  def new
    @funding_request = FundingRequest.new
  end

  # GET /funding_requests/1/edit
  def edit
  end

  # POST /funding_requests or /funding_requests.json
  def create
    @funding_request = FundingRequest.new(funding_request_params)

    respond_to do |format|
      if @funding_request.save
        format.html { redirect_to funding_request_url(@funding_request), notice: "Funding request was successfully created." }
        format.json { render :show, status: :created, location: @funding_request }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @funding_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /funding_requests/1 or /funding_requests/1.json
  def update
    respond_to do |format|
      if @funding_request.update(funding_request_params)
        format.html { redirect_to funding_request_url(@funding_request), notice: "Funding request was successfully updated." }
        format.json { render :show, status: :ok, location: @funding_request }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @funding_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /funding_requests/1 or /funding_requests/1.json
  def destroy
    @funding_request.destroy

    respond_to do |format|
      format.html { redirect_to funding_requests_url, notice: "Funding request was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_funding_request
      @funding_request = FundingRequest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def funding_request_params
      params.require(:funding_request).permit(:round_id, :construction_id)
    end
end
