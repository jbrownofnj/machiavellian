class PeopleController < ApplicationController
  before_action :set_person, only: %i[ show edit update destroy ]
  before_action :current_user, only: %i[logged_in_user]
  # GET /people or /people.json
  def logged_in_user
    @logged_in_user=Person.find(session[:current_user])
    render json:@logged_in_user, serializer: PeopleSerializer
  end
  def index
    @people = Person.all
    render json:@people
  end

  # GET /people/1 or /people/1.json
  def show
    
  end

  # GET /people/new
  def new
    @person = Person.new
  end

  # GET /people/1/edit
  def edit
  end

  # POST /people or /people.json
  def create
    @person = Person.new(person_params)
      if @person.save
        render json:@person, status: :created, location: @person 
      else
        render json:({errors:"failed to create person"}), status: :unprocessable_entity
      end
  end

  # PATCH/PUT /people/1 or /people/1.json
  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to person_url(@person), notice: "Person was successfully updated." }
        format.json { render :show, status: :ok, location: @person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1 or /people/1.json
  def destroy
    @person.destroy

    respond_to do |format|
      format.html { redirect_to people_url, notice: "Person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def person_params
      params.permit(:person_email,:password)
    end
end
