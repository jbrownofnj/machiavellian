class TradeRequestsController < ApplicationController
  before_action :set_trade_request, only: %i[ show edit update destroy ]

  # GET /trade_requests or /trade_requests.json
  def index
    @trade_requests = TradeRequest.all
    render json:@trade_requests
  end

  # GET /trade_requests/1 or /trade_requests/1.json
  def show
  end

  # GET /trade_requests/new
  def new
    @trade_request = TradeRequest.new
  end

  # GET /trade_requests/1/edit
  def edit
  end

  # POST /trade_requests or /trade_requests.json
  def create
    @trade_request = TradeRequest.new(trade_request_params)

    respond_to do |format|
      if @trade_request.save
        format.html { redirect_to trade_request_url(@trade_request), notice: "Trade request was successfully created." }
        format.json { render :show, status: :created, location: @trade_request }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @trade_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trade_requests/1 or /trade_requests/1.json
  def update
    respond_to do |format|
      if @trade_request.update(trade_request_params)
        format.html { redirect_to trade_request_url(@trade_request), notice: "Trade request was successfully updated." }
        format.json { render :show, status: :ok, location: @trade_request }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @trade_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trade_requests/1 or /trade_requests/1.json
  def destroy
    @trade_request.destroy

    respond_to do |format|
      format.html { redirect_to trade_requests_url, notice: "Trade request was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trade_request
      @trade_request = TradeRequest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trade_request_params
      params.require(:trade_request).permit(:round_id)
    end
end
