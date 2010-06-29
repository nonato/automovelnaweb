class VehicleAdvertisementsController < ApplicationController
  # GET /vehicle_advertisements
  # GET /vehicle_advertisements.xml
  def index
    @vehicle_advertisements = VehicleAdvertisement.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vehicle_advertisements }
    end
  end

  # GET /vehicle_advertisements/1
  # GET /vehicle_advertisements/1.xml
  def show
    @vehicle_advertisement = VehicleAdvertisement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @vehicle_advertisement }
    end
  end

  # GET /vehicle_advertisements/new
  # GET /vehicle_advertisements/new.xml
  def new
    @vehicle_advertisement = VehicleAdvertisement.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vehicle_advertisement }
    end
  end

  # GET /vehicle_advertisements/1/edit
  def edit
    @vehicle_advertisement = VehicleAdvertisement.find(params[:id])
  end

  # POST /vehicle_advertisements
  # POST /vehicle_advertisements.xml
  def create
    @vehicle_advertisement = VehicleAdvertisement.new(params[:vehicle_advertisement])

    respond_to do |format|
      if @vehicle_advertisement.save
        flash[:notice] = 'VehicleAdvertisement was successfully created.'
        format.html { redirect_to(@vehicle_advertisement) }
        format.xml  { render :xml => @vehicle_advertisement, :status => :created, :location => @vehicle_advertisement }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vehicle_advertisement.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vehicle_advertisements/1
  # PUT /vehicle_advertisements/1.xml
  def update
    @vehicle_advertisement = VehicleAdvertisement.find(params[:id])

    respond_to do |format|
      if @vehicle_advertisement.update_attributes(params[:vehicle_advertisement])
        flash[:notice] = 'VehicleAdvertisement was successfully updated.'
        format.html { redirect_to(@vehicle_advertisement) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vehicle_advertisement.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_advertisements/1
  # DELETE /vehicle_advertisements/1.xml
  def destroy
    @vehicle_advertisement = VehicleAdvertisement.find(params[:id])
    @vehicle_advertisement.destroy

    respond_to do |format|
      format.html { redirect_to(vehicle_advertisements_url) }
      format.xml  { head :ok }
    end
  end
end
