class GymsController < ApplicationController
  # GET /gyms
  # GET /gyms.json
  def index
    @gyms = Gym.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @gyms }
    end
  end

  # GET /gyms/1
  # GET /gyms/1.json
  def show
    @gym = Gym.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @gym }
    end
  end

  # GET /gyms/new
  # GET /gyms/new.json
  def new
    @gym = Gym.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @gym }
    end
  end

  # GET /gyms/1/edit
  def edit
    @gym = Gym.find(params[:id])
  end

  # POST /gyms
  # POST /gyms.json
  def create
    @gym = Gym.new(params[:gym])

    respond_to do |format|
      if @gym.save
        format.html { redirect_to @gym, :notice => 'Gym was successfully created.' }
        format.json { render :json => @gym, :status => :created, :location => @gym }
      else
        format.html { render :action => "new" }
        format.json { render :json => @gym.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /gyms/1
  # PUT /gyms/1.json
  def update
    @gym = Gym.find(params[:id])

    respond_to do |format|
      if @gym.update_attributes(params[:gym])
        format.html { redirect_to @gym, :notice => 'Gym was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @gym.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /gyms/1
  # DELETE /gyms/1.json
  def destroy
    @gym = Gym.find(params[:id])
    @gym.destroy

    respond_to do |format|
      format.html { redirect_to gyms_url }
      format.json { head :ok }
    end
  end
end
