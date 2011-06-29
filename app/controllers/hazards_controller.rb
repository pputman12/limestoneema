class HazardsController < ApplicationController
  # GET /hazards
  # GET /hazards.json
  def index
    @hazards = Hazard.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hazards }
    end
  end

  # GET /hazards/1
  # GET /hazards/1.json
  def show
    @hazard = Hazard.find(params[:id])
  end

  # GET /hazards/new
  # GET /hazards/new.json
  def new
    @hazard = Hazard.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hazard }
    end
  end

  # GET /hazards/1/edit
  def edit
    @hazard = Hazard.find(params[:id])
  end

  # POST /hazards
  # POST /hazards.json
  def create
    @hazard = Hazard.new(params[:hazard])

    respond_to do |format|
      if @hazard.save
        format.html { redirect_to @hazard, notice: 'Hazard was successfully created.' }
        format.json { render json: @hazard, status: :created, location: @hazard }
      else
        format.html { render action: "new" }
        format.json { render json: @hazard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hazards/1
  # PUT /hazards/1.json
  def update
    @hazard = Hazard.find(params[:id])

    respond_to do |format|
      if @hazard.update_attributes(params[:hazard])
        format.html { redirect_to @hazard, notice: 'Hazard was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @hazard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hazards/1
  # DELETE /hazards/1.json
  def destroy
    @hazard = Hazard.find(params[:id])
    @hazard.destroy

    respond_to do |format|
      format.html { redirect_to hazards_url }
      format.json { head :ok }
    end
  end
end
