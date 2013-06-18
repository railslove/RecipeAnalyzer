class IngredientsNamesController < ApplicationController
  # GET /ingredients_names
  # GET /ingredients_names.json
  def index
    @ingredients_names = IngredientsName.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ingredients_names }
    end
  end

  # GET /ingredients_names/1
  # GET /ingredients_names/1.json
  def show
    @ingredients_name = IngredientsName.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ingredients_name }
    end
  end

  # GET /ingredients_names/new
  # GET /ingredients_names/new.json
  def new
    @ingredients_name = IngredientsName.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ingredients_name }
    end
  end

  # GET /ingredients_names/1/edit
  def edit
    @ingredients_name = IngredientsName.find(params[:id])
  end

  # POST /ingredients_names
  # POST /ingredients_names.json
  def create
    @ingredients_name = IngredientsName.new(params[:ingredients_name])

    respond_to do |format|
      if @ingredients_name.save
        format.html { redirect_to @ingredients_name, notice: 'Ingredients name was successfully created.' }
        format.json { render json: @ingredients_name, status: :created, location: @ingredients_name }
      else
        format.html { render action: "new" }
        format.json { render json: @ingredients_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ingredients_names/1
  # PUT /ingredients_names/1.json
  def update
    @ingredients_name = IngredientsName.find(params[:id])

    respond_to do |format|
      if @ingredients_name.update_attributes(params[:ingredients_name])
        format.html { redirect_to @ingredients_name, notice: 'Ingredients name was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ingredients_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredients_names/1
  # DELETE /ingredients_names/1.json
  def destroy
    @ingredients_name = IngredientsName.find(params[:id])
    @ingredients_name.destroy

    respond_to do |format|
      format.html { redirect_to ingredients_names_url }
      format.json { head :no_content }
    end
  end
end
