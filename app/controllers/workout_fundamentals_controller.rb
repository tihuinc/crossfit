class WorkoutFundamentalsController < ApplicationController
  # GET /workout_fundamentals
  # GET /workout_fundamentals.json
  def index
    @workout_fundamentals = WorkoutFundamental.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @workout_fundamentals }
    end
  end

  # GET /workout_fundamentals/1
  # GET /workout_fundamentals/1.json
  def show
    @workout_fundamental = WorkoutFundamental.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @workout_fundamental }
    end
  end

  # GET /workout_fundamentals/new
  # GET /workout_fundamentals/new.json
  def new
    @workout_fundamental = WorkoutFundamental.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @workout_fundamental }
    end
  end

  # GET /workout_fundamentals/1/edit
  def edit
    @workout_fundamental = WorkoutFundamental.find(params[:id])
  end

  # POST /workout_fundamentals
  # POST /workout_fundamentals.json
  def create
    @workout_fundamental = WorkoutFundamental.new(params[:workout_fundamental])

    respond_to do |format|
      if @workout_fundamental.save
        format.html { redirect_to @workout_fundamental, notice: 'Workout fundamental was successfully created.' }
        format.json { render json: @workout_fundamental, status: :created, location: @workout_fundamental }
      else
        format.html { render action: "new" }
        format.json { render json: @workout_fundamental.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /workout_fundamentals/1
  # PUT /workout_fundamentals/1.json
  def update
    @workout_fundamental = WorkoutFundamental.find(params[:id])

    respond_to do |format|
      if @workout_fundamental.update_attributes(params[:workout_fundamental])
        format.html { redirect_to @workout_fundamental, notice: 'Workout fundamental was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @workout_fundamental.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workout_fundamentals/1
  # DELETE /workout_fundamentals/1.json
  def destroy
    @workout_fundamental = WorkoutFundamental.find(params[:id])
    @workout_fundamental.destroy

    respond_to do |format|
      format.html { redirect_to workout_fundamentals_url }
      format.json { head :ok }
    end
  end
end
