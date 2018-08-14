class SuperBeingsController < ApplicationController
  before_action :set_super_being, only: [:show, :edit, :update, :destroy]
  before_action :set_teams, only: [:new, :edit]
  
  # GET /super_beings
  # GET /super_beings.json
  def index
    @super_beings = SuperBeing.all
  end

  # GET /super_beings/1
  # GET /super_beings/1.json
  def show
  end

  # GET /super_beings/new
  def new
    @super_being = SuperBeing.new
  end

  # GET /super_beings/1/edit
  def edit
  end

def set_teams
    @teams = Team.all

end
  # POST /super_beings
  # POST /super_beings.json
  def create
    @super_being = SuperBeing.new(super_being_params)

    respond_to do |format|
      if @super_being.save
        format.html { redirect_to @super_being, notice: 'Super being was successfully created.' }
        format.json { render :show, status: :created, location: @super_being }
      else
        format.html { render :new }
        format.json { render json: @super_being.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /super_beings/1
  # PATCH/PUT /super_beings/1.json
  def update
    respond_to do |format|
      if @super_being.update(super_being_params)
        format.html { redirect_to @super_being, notice: 'Super being was successfully updated.' }
        format.json { render :show, status: :ok, location: @super_being }
      else
        format.html { render :edit }
        format.json { render json: @super_being.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /super_beings/1
  # DELETE /super_beings/1.json
  def destroy
    @super_being.destroy
    respond_to do |format|
      format.html { redirect_to super_beings_url, notice: 'Super being was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_super_being
      @super_being = SuperBeing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def super_being_params
      params.require(:super_being).permit(:name, :power, :confirmed_kills, :human, :team_id, :arch_nemesis_id)
    end
end

