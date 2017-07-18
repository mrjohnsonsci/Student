class ClasshoursController < ApplicationController
  before_action :set_classhour, only: [:show, :edit, :update, :destroy]

  # GET /classhours
  # GET /classhours.json
  def index
    @classhours = Classhour.all
  end

  # GET /classhours/1
  # GET /classhours/1.json
  def show
  end

  # GET /classhours/new
  def new
    @classhour = Classhour.new
  end

  # GET /classhours/1/edit
  def edit
  end

  # POST /classhours
  # POST /classhours.json
  def create
    @classhour = Classhour.new(classhour_params)

    respond_to do |format|
      if @classhour.save
        format.html { redirect_to @classhour, notice: 'Classhour was successfully created.' }
        format.json { render :show, status: :created, location: @classhour }
      else
        format.html { render :new }
        format.json { render json: @classhour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classhours/1
  # PATCH/PUT /classhours/1.json
  def update
    respond_to do |format|
      if @classhour.update(classhour_params)
        format.html { redirect_to @classhour, notice: 'Classhour was successfully updated.' }
        format.json { render :show, status: :ok, location: @classhour }
      else
        format.html { render :edit }
        format.json { render json: @classhour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classhours/1
  # DELETE /classhours/1.json
  def destroy
    @classhour.destroy
    respond_to do |format|
      format.html { redirect_to classhours_url, notice: 'Classhour was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classhour
      @classhour = Classhour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def classhour_params
      params.require(:classhour).permit(:hour, :pupil_id, :user_id)
    end
end
