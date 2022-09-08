class PlayerActionsController < ApplicationController
  before_action :set_player_action, only: %i[ show edit update destroy ]

  # GET /player_actions or /player_actions.json
  def index
    @player_actions = PlayerAction.all
    render json:@player_actions
  end

  # GET /player_actions/1 or /player_actions/1.json
  def show
  end

  # GET /player_actions/new
  def new
    @player_action = PlayerAction.new
  end

  # GET /player_actions/1/edit
  def edit
  end

  # POST /player_actions or /player_actions.json
  def create
    @player_action = PlayerAction.new(player_action_params)

    respond_to do |format|
      if @player_action.save
        format.html { redirect_to player_action_url(@player_action), notice: "Player action was successfully created." }
        format.json { render :show, status: :created, location: @player_action }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @player_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /player_actions/1 or /player_actions/1.json
  def update
    respond_to do |format|
      if @player_action.update(player_action_params)
        format.html { redirect_to player_action_url(@player_action), notice: "Player action was successfully updated." }
        format.json { render :show, status: :ok, location: @player_action }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @player_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_actions/1 or /player_actions/1.json
  def destroy
    @player_action.destroy

    respond_to do |format|
      format.html { redirect_to player_actions_url, notice: "Player action was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_action
      @player_action = PlayerAction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def player_action_params
      params.require(:player_action).permit(:player_id, :round_id, :action_type)
    end
end
