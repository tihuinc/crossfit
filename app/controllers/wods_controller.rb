class WodsController < ApplicationController
  # GET /wods
  # GET /wods.json
  def index
    @wods = Wod.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wods }
    end
  end

  # GET /wods/1
  # GET /wods/1.json
  def show
    @wod = Wod.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wod }
    end
  end

  # GET /wods/new
  # GET /wods/new.json
  def new
    @wod = Wod.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wod }
    end
  end

  # GET /wods/1/edit
  def edit
    @wod = Wod.find(params[:id])
  end

  # POST /wods
  # POST /wods.json
  def create
    @wod = Wod.new(params[:wod])

    respond_to do |format|
      if @wod.save
        format.html { redirect_to @wod, notice: 'Wod was successfully created.' }
        format.json { render json: @wod, status: :created, location: @wod }
      else
        format.html { render action: "new" }
        format.json { render json: @wod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /wods/1
  # PUT /wods/1.json
  def update
    @wod = Wod.find(params[:id])

    respond_to do |format|
      if @wod.update_attributes(params[:wod])
        format.html { redirect_to @wod, notice: 'Wod was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @wod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wods/1
  # DELETE /wods/1.json
  def destroy
    @wod = Wod.find(params[:id])
    @wod.destroy

    respond_to do |format|
      format.html { redirect_to wods_url }
      format.json { head :ok }
    end
  end
end
