class PathToPowerConstructionsController < ApplicationController
  before_action :set_path_to_power_construction, only: %i[ show edit update destroy ]

  # GET /path_to_power_constructions or /path_to_power_constructions.json
  def index
    @path_to_power_constructions = PathToPowerConstruction.all
    render json: @path_to_power_constructions
  end

  # GET /path_to_power_constructions/1 or /path_to_power_constructions/1.json
  def show
  end

  # GET /path_to_power_constructions/new
  def new
    @path_to_power_construction = PathToPowerConstruction.new
  end

  # GET /path_to_power_constructions/1/edit
  def edit
  end

  # POST /path_to_power_constructions or /path_to_power_constructions.json
  def create
    @path_to_power_construction = PathToPowerConstruction.new(path_to_power_construction_params)

    respond_to do |format|
      if @path_to_power_construction.save
        format.html { redirect_to path_to_power_construction_url(@path_to_power_construction), notice: "Path to power construction was successfully created." }
        format.json { render :show, status: :created, location: @path_to_power_construction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @path_to_power_construction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /path_to_power_constructions/1 or /path_to_power_constructions/1.json
  def update
    respond_to do |format|
      if @path_to_power_construction.update(path_to_power_construction_params)
        format.html { redirect_to path_to_power_construction_url(@path_to_power_construction), notice: "Path to power construction was successfully updated." }
        format.json { render :show, status: :ok, location: @path_to_power_construction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @path_to_power_construction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /path_to_power_constructions/1 or /path_to_power_constructions/1.json
  def destroy
    @path_to_power_construction.destroy

    respond_to do |format|
      format.html { redirect_to path_to_power_constructions_url, notice: "Path to power construction was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_path_to_power_construction
      @path_to_power_construction = PathToPowerConstruction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def path_to_power_construction_params
      params.require(:path_to_power_construction).permit(:construction_id, :path_to_power_type)
    end
end
