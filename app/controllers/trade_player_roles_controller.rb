class TradePlayerRolesController < ApplicationController
  before_action :set_trade_player_role, only: %i[ show edit update destroy ]

  # GET /trade_player_roles or /trade_player_roles.json
  def index
    @trade_player_roles = TradePlayerRole.all
    render json: @trade_player_roles
  end

  # GET /trade_player_roles/1 or /trade_player_roles/1.json
  def show
  end

  # GET /trade_player_roles/new
  def new
    @trade_player_role = TradePlayerRole.new
  end

  # GET /trade_player_roles/1/edit
  def edit
  end

  # POST /trade_player_roles or /trade_player_roles.json
  def create
    @trade_player_role = TradePlayerRole.new(trade_player_role_params)

    respond_to do |format|
      if @trade_player_role.save
        format.html { redirect_to trade_player_role_url(@trade_player_role), notice: "Trade player role was successfully created." }
        format.json { render :show, status: :created, location: @trade_player_role }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @trade_player_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trade_player_roles/1 or /trade_player_roles/1.json
  def update
    respond_to do |format|
      if @trade_player_role.update(trade_player_role_params)
        format.html { redirect_to trade_player_role_url(@trade_player_role), notice: "Trade player role was successfully updated." }
        format.json { render :show, status: :ok, location: @trade_player_role }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @trade_player_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trade_player_roles/1 or /trade_player_roles/1.json
  def destroy
    @trade_player_role.destroy

    respond_to do |format|
      format.html { redirect_to trade_player_roles_url, notice: "Trade player role was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trade_player_role
      @trade_player_role = TradePlayerRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trade_player_role_params
      params.require(:trade_player_role).permit(:player_id, :trade_request_resource_id, :role_type)
    end
end
