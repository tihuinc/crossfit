class FundamentalsController < ApplicationController
  # GET /fundamentals
  # GET /fundamentals.json
  def index
    @fundamentals = Fundamental.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fundamentals }
    end
  end

  # GET /fundamentals/1
  # GET /fundamentals/1.json
  def show
    @fundamental = Fundamental.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fundamental }
    end
  end

  # GET /fundamentals/new
  # GET /fundamentals/new.json
  def new
    @fundamental = Fundamental.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fundamental }
    end
  end

  # GET /fundamentals/1/edit
  def edit
    @fundamental = Fundamental.find(params[:id])
  end

  # POST /fundamentals
  # POST /fundamentals.json
  def create
    @fundamental = Fundamental.new(params[:fundamental])

    respond_to do |format|
      if @fundamental.save
        format.html { redirect_to @fundamental, notice: 'Fundamental was successfully created.' }
        format.json { render json: @fundamental, status: :created, location: @fundamental }
      else
        format.html { render action: "new" }
        format.json { render json: @fundamental.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fundamentals/1
  # PUT /fundamentals/1.json
  def update
    @fundamental = Fundamental.find(params[:id])

    respond_to do |format|
      if @fundamental.update_attributes(params[:fundamental])
        format.html { redirect_to @fundamental, notice: 'Fundamental was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @fundamental.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fundamentals/1
  # DELETE /fundamentals/1.json
  def destroy
    @fundamental = Fundamental.find(params[:id])
    @fundamental.destroy

    respond_to do |format|
      format.html { redirect_to fundamentals_url }
      format.json { head :ok }
    end
  end
end
