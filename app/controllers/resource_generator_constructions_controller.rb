class ResourceGeneratorConstructionsController < ApplicationController
  before_action :set_resource_generator_construction, only: %i[ show edit update destroy ]

  # GET /resource_generator_constructions or /resource_generator_constructions.json
  def index
    @resource_generator_constructions = ResourceGeneratorConstruction.all
    render json:@resource_generator_constructions
  end

  # GET /resource_generator_constructions/1 or /resource_generator_constructions/1.json
  def show
  end

  # GET /resource_generator_constructions/new
  def new
    @resource_generator_construction = ResourceGeneratorConstruction.new
  end

  # GET /resource_generator_constructions/1/edit
  def edit
  end

  # POST /resource_generator_constructions or /resource_generator_constructions.json
  def create
    @resource_generator_construction = ResourceGeneratorConstruction.new(resource_generator_construction_params)

    respond_to do |format|
      if @resource_generator_construction.save
        format.html { redirect_to resource_generator_construction_url(@resource_generator_construction), notice: "Resource generator construction was successfully created." }
        format.json { render :show, status: :created, location: @resource_generator_construction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @resource_generator_construction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resource_generator_constructions/1 or /resource_generator_constructions/1.json
  def update
    respond_to do |format|
      if @resource_generator_construction.update(resource_generator_construction_params)
        format.html { redirect_to resource_generator_construction_url(@resource_generator_construction), notice: "Resource generator construction was successfully updated." }
        format.json { render :show, status: :ok, location: @resource_generator_construction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @resource_generator_construction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resource_generator_constructions/1 or /resource_generator_constructions/1.json
  def destroy
    @resource_generator_construction.destroy

    respond_to do |format|
      format.html { redirect_to resource_generator_constructions_url, notice: "Resource generator construction was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource_generator_construction
      @resource_generator_construction = ResourceGeneratorConstruction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def resource_generator_construction_params
      params.require(:resource_generator_construction).permit(:construction_id, :resource_generator_type)
    end
end
