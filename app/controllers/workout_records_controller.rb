class WorkoutRecordsController < ApplicationController
  # GET /workout_records
  # GET /workout_records.json
  
  
  def index
    @workout_records = WorkoutRecord.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @workout_records }
    end
  end

  # GET /workout_records/1
  # GET /workout_records/1.json
  def show
    @workout_record = WorkoutRecord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @workout_record }
    end
  end

  # GET /workout_records/new
  # GET /workout_records/new.json
  def new
    @workout_record = WorkoutRecord.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @workout_record }
    end
  end

  # GET /workout_records/1/edit
  def edit
    @workout_record = WorkoutRecord.find(params[:id])
  end

  # POST /workout_records
  # POST /workout_records.json
  def create
    @workout_record = WorkoutRecord.new(params[:workout_record])
    
 
    

    respond_to do |format|
      if @workout_record.save
        format.html { redirect_to @workout_record, notice: 'Workout record was successfully created.' }
        format.json { render json: @workout_record, status: :created, location: @workout_record }
      else
        format.html { render action: "new" }
        format.json { render json: @workout_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /workout_records/1
  # PUT /workout_records/1.json
  def update
    @workout_record = WorkoutRecord.find(params[:id])

    respond_to do |format|
      if @workout_record.update_attributes(params[:workout_record])
        format.html { redirect_to @workout_record, notice: 'Workout record was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @workout_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workout_records/1
  # DELETE /workout_records/1.json
  def destroy
    @workout_record = WorkoutRecord.find(params[:id])
    @workout_record.destroy

    respond_to do |format|
      format.html { redirect_to workout_records_url }
      format.json { head :ok }
    end
  end
end


