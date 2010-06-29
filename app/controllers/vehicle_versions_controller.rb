class VehicleVersionsController < ApplicationController
  # GET /vehicle_versions
  # GET /vehicle_versions.xml
  def index
    @vehicle_versions = VehicleVersion.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vehicle_versions }
    end
  end

  # GET /vehicle_versions/1
  # GET /vehicle_versions/1.xml
  def show
    @vehicle_version = VehicleVersion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @vehicle_version }
    end
  end

  # GET /vehicle_versions/new
  # GET /vehicle_versions/new.xml
  def new
    @vehicle_version = VehicleVersion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vehicle_version }
    end
  end

  # GET /vehicle_versions/1/edit
  def edit
    @vehicle_version = VehicleVersion.find(params[:id])
  end

  # POST /vehicle_versions
  # POST /vehicle_versions.xml
  def create
    @vehicle_version = VehicleVersion.new(params[:vehicle_version])

    respond_to do |format|
      if @vehicle_version.save
        flash[:notice] = 'VehicleVersion was successfully created.'
        format.html { redirect_to(@vehicle_version) }
        format.xml  { render :xml => @vehicle_version, :status => :created, :location => @vehicle_version }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vehicle_version.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vehicle_versions/1
  # PUT /vehicle_versions/1.xml
  def update
    @vehicle_version = VehicleVersion.find(params[:id])

    respond_to do |format|
      if @vehicle_version.update_attributes(params[:vehicle_version])
        flash[:notice] = 'VehicleVersion was successfully updated.'
        format.html { redirect_to(@vehicle_version) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vehicle_version.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_versions/1
  # DELETE /vehicle_versions/1.xml
  def destroy
    @vehicle_version = VehicleVersion.find(params[:id])
    @vehicle_version.destroy

    respond_to do |format|
      format.html { redirect_to(vehicle_versions_url) }
      format.xml  { head :ok }
    end
  end
end
