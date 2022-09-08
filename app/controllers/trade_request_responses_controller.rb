class TradeRequestResponsesController < ApplicationController
  before_action :set_trade_request_response, only: %i[ show edit update destroy ]

  # GET /trade_request_responses or /trade_request_responses.json
  def index
    @trade_request_responses = TradeRequestResponse.all
    render json: @trade_request_responses
  end

  # GET /trade_request_responses/1 or /trade_request_responses/1.json
  def show
  end

  # GET /trade_request_responses/new
  def new
    @trade_request_response = TradeRequestResponse.new
  end

  # GET /trade_request_responses/1/edit
  def edit
  end

  # POST /trade_request_responses or /trade_request_responses.json
  def create
    @trade_request_response = TradeRequestResponse.new(trade_request_response_params)

    respond_to do |format|
      if @trade_request_response.save
        format.html { redirect_to trade_request_response_url(@trade_request_response), notice: "Trade request response was successfully created." }
        format.json { render :show, status: :created, location: @trade_request_response }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @trade_request_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trade_request_responses/1 or /trade_request_responses/1.json
  def update
    respond_to do |format|
      if @trade_request_response.update(trade_request_response_params)
        format.html { redirect_to trade_request_response_url(@trade_request_response), notice: "Trade request response was successfully updated." }
        format.json { render :show, status: :ok, location: @trade_request_response }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @trade_request_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trade_request_responses/1 or /trade_request_responses/1.json
  def destroy
    @trade_request_response.destroy

    respond_to do |format|
      format.html { redirect_to trade_request_responses_url, notice: "Trade request response was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trade_request_response
      @trade_request_response = TradeRequestResponse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trade_request_response_params
      params.require(:trade_request_response).permit(:trade_player_role_id, :trade_request_id, :trade_response_type)
    end
end
