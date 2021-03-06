class AgenciesController < ApplicationController
  before_action :set_agency, only: [:show, :edit, :update, :destroy]

  # GET /agencies
  # GET /agencies.json
  def index
    if params[:term]
      @label = "Displaying Agencies in " + params[:term]
      if params[:term].include? ","
        terms = params[:term].split(",")
        @agencies = Agency.where(["city = ? and state = ?", terms[0].upcase.strip, terms[1].upcase.strip]).order(rating: :desc)
      else
        @agencies = Agency.where(["city = ?", params[:term].upcase]).order(rating: :desc)
      end
    else
      @label = "Displaying All Agencies"
      @agencies = Agency.all.order(rating: :desc)
    end
  end

  def show
    @agencies= Agency.all
  end

  def agency_params
    params.require(:agency).permit(:name, :street, :city, :state, :phone, :term)
  end
  
  # GET /agencies/1
  # GET /agencies/1.json
  

  # GET /agencies/new
  def new
    @agency = Agency.new
  end

  # GET /agencies/1/edit
  def edit
  end

  # POST /agencies
  # POST /agencies.json
  def create
    @agency = Agency.new(agency_params)

    respond_to do |format|
      if @agency.save
        format.html { redirect_to @agency, notice: 'Agency was successfully created.' }
        format.json { render :show, status: :created, location: @agency }
      else
        format.html { render :new }
        format.json { render json: @agency.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # PATCH/PUT /agencies/1
  # PATCH/PUT /agencies/1.json
  def update
    respond_to do |format|
      if @agency.update(agency_params)
        format.html { redirect_to @agency, notice: 'Agency was successfully updated.' }
        format.json { render :show, status: :ok, location: @agency }
      else
        format.html { render :edit }
        format.json { render json: @agency.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agencies/1
  # DELETE /agencies/1.json
  def destroy
    @agency.destroy
    respond_to do |format|
      format.html { redirect_to agencies_url, notice: 'Agency was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agency
      @agency = Agency.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.

    
end

