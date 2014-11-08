class FeelsController < ApplicationController
  before_action :set_feel, only: [:show, :edit, :update, :destroy]

  # GET /feels
  # GET /feels.json
  def index
    @feels = Feel.all
  end

  # GET /feels/1
  # GET /feels/1.json
  def show
  end

  # GET /feels/new
  def new
    @feel = Feel.new
  end

  # GET /feels/1/edit
  def edit
  end

  # POST /feels
  # POST /feels.json
  def create
    @feel = Feel.new(feel_params)

    respond_to do |format|
      if @feel.save
        format.html { redirect_to @feel, notice: 'Feel was successfully created.' }
        format.json { render :show, status: :created, location: @feel }
      else
        format.html { render :new }
        format.json { render json: @feel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /feels/1
  # PATCH/PUT /feels/1.json
  def update
    respond_to do |format|
      if @feel.update(feel_params)
        format.html { redirect_to @feel, notice: 'Feel was successfully updated.' }
        format.json { render :show, status: :ok, location: @feel }
      else
        format.html { render :edit }
        format.json { render json: @feel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feels/1
  # DELETE /feels/1.json
  def destroy
    @feel.destroy
    respond_to do |format|
      format.html { redirect_to feels_url, notice: 'Feel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feel
      @feel = Feel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def feel_params
      params.require(:feel).permit(:name)
    end
end
