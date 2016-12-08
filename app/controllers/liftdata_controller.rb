class LiftdataController < ApplicationController
  before_action :set_liftdatum, only: [:show, :edit, :update, :destroy]

  # GET /liftdata
  # GET /liftdata.json
  def index
    @liftdata = Liftdatum.all
  end

  # GET /liftdata/1
  # GET /liftdata/1.json
  def show
  end

  # GET /liftdata/new
  def new
    @liftdatum = Liftdatum.new
  end

  # GET /liftdata/1/edit
  def edit
  end

  # POST /liftdata
  # POST /liftdata.json
  def create
    @liftdatum = Liftdatum.new(liftdatum_params)

    respond_to do |format|
      if @liftdatum.save
        format.html { redirect_to @liftdatum, notice: 'Liftdatum was successfully created.' }
        format.json { render :show, status: :created, location: @liftdatum }
      else
        format.html { render :new }
        format.json { render json: @liftdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /liftdata/1
  # PATCH/PUT /liftdata/1.json
  def update
    respond_to do |format|
      if @liftdatum.update(liftdatum_params)
        format.html { redirect_to @liftdatum, notice: 'Liftdatum was successfully updated.' }
        format.json { render :show, status: :ok, location: @liftdatum }
      else
        format.html { render :edit }
        format.json { render json: @liftdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /liftdata/1
  # DELETE /liftdata/1.json
  def destroy
    @liftdatum.destroy
    respond_to do |format|
      format.html { redirect_to liftdata_url, notice: 'Liftdatum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_liftdatum
      @liftdatum = Liftdatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def liftdatum_params
      params.require(:liftdatum).permit(:exercise, :set, :rep, :weight, :user)
    end
end
