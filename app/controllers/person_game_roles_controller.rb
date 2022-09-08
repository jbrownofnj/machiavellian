class PersonGameRolesController < ApplicationController
  before_action :set_person_game_role, only: %i[ show edit update destroy ]

  # GET /person_game_roles or /person_game_roles.json
  def index
    @person_game_roles = PersonGameRole.all
    render json:@person_game_roles
  end

  # GET /person_game_roles/1 or /person_game_roles/1.json
  def show
  end

  # GET /person_game_roles/new
  def new
    @person_game_role = PersonGameRole.new
  end

  # GET /person_game_roles/1/edit
  def edit
  end

  # POST /person_game_roles or /person_game_roles.json
  def create
    @person_game_role = PersonGameRole.new(person_game_role_params)

    respond_to do |format|
      if @person_game_role.save
        format.html { redirect_to person_game_role_url(@person_game_role), notice: "Person game role was successfully created." }
        format.json { render :show, status: :created, location: @person_game_role }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @person_game_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_game_roles/1 or /person_game_roles/1.json
  def update
    respond_to do |format|
      if @person_game_role.update(person_game_role_params)
        format.html { redirect_to person_game_role_url(@person_game_role), notice: "Person game role was successfully updated." }
        format.json { render :show, status: :ok, location: @person_game_role }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @person_game_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_game_roles/1 or /person_game_roles/1.json
  def destroy
    @person_game_role.destroy

    respond_to do |format|
      format.html { redirect_to person_game_roles_url, notice: "Person game role was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_game_role
      @person_game_role = PersonGameRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def person_game_role_params
      params.require(:person_game_role).permit(:person_id, :game_id, :person_game_role_type)
    end
end
