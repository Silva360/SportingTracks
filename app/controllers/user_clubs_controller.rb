class UserClubsController < ApplicationController
  before_action :set_user_club, only: [:show, :edit, :update, :destroy]

  # GET /user_clubs
  # GET /user_clubs.json
  def index
    #apenas listar todos os clubes do user logado
    @user_clubs = UserClub.where("user_id = #{current_user.id}")
  end

  # GET /user_clubs/1
  # GET /user_clubs/1.json
  def show
  end

  # GET /user_clubs/new
  def new
    @user_club = UserClub.new
  end

  # GET /user_clubs/1/edit
  def edit
  end

  # POST /user_clubs
  # POST /user_clubs.json
  def create
    @user_club = UserClub.new(user_club_params)

    respond_to do |format|
      if @user_club.save
        format.html { redirect_to @user_club, notice: 'User club was successfully created.' }
        format.json { render :show, status: :created, location: @user_club }
      else
        format.html { render :new }
        format.json { render json: @user_club.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_clubs/1
  # PATCH/PUT /user_clubs/1.json
  def update
    respond_to do |format|
      if @user_club.update(user_club_params)
        format.html { redirect_to @user_club, notice: 'User club was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_club }
      else
        format.html { render :edit }
        format.json { render json: @user_club.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_clubs/1
  # DELETE /user_clubs/1.json
  def destroy
    @user_club.destroy
    respond_to do |format|
      format.html { redirect_to user_clubs_url, notice: 'User club was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_club
      @user_club = UserClub.find(params[:id])
      @user = User.find(@user_club.user_id)
      @club = Club.find(@user_club.club_id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_club_params
      params.require(:user_club).permit(:user_id, :club_id, :join_date)
    end
end
