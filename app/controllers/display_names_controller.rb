class DisplayNamesController < ApplicationController
  # GET /display_names
  # GET /display_names.json
  def index
    @display_names = DisplayName.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @display_names }
    end
  end

  # GET /display_names/1
  # GET /display_names/1.json
  def show
    @display_name = DisplayName.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @display_name }
    end
  end

  # GET /display_names/new
  # GET /display_names/new.json
  def new
    @display_name = DisplayName.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @display_name }
    end
  end

  # GET /display_names/1/edit
  def edit
    @display_name = DisplayName.find(params[:id])
  end

  # POST /display_names
  # POST /display_names.json
  def create
    @display_name = DisplayName.new(params[:display_name])

    respond_to do |format|
      if @display_name.save
        format.html { redirect_to @display_name, notice: 'Display name was successfully created.' }
        format.json { render json: @display_name, status: :created, location: @display_name }
      else
        format.html { render action: "new" }
        format.json { render json: @display_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /display_names/1
  # PUT /display_names/1.json
  def update
    @display_name = DisplayName.find(params[:id])

    respond_to do |format|
      if @display_name.update_attributes(params[:display_name])
        format.html { redirect_to @display_name, notice: 'Display name was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @display_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /display_names/1
  # DELETE /display_names/1.json
  def destroy
    @display_name = DisplayName.find(params[:id])
    @display_name.destroy

    respond_to do |format|
      format.html { redirect_to display_names_url }
      format.json { head :no_content }
    end
  end
end
