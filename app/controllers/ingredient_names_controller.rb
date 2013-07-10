class IngredientNamesController < ApplicationController
  # GET /ingredient_names
  # GET /ingredient_names.json
  def index
    @ingredient_names = IngredientName.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ingredient_names }
    end
  end

  # GET /ingredient_names/1
  # GET /ingredient_names/1.json
  def show
    @ingredient_name = IngredientName.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ingredient_name }
    end
  end

  # GET /ingredient_names/new
  # GET /ingredient_names/new.json
  def new
    @ingredient_name = IngredientName.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ingredient_name }
    end
  end

  # GET /ingredient_names/1/edit
  def edit
    @ingredient_name = IngredientName.find(params[:id])
  end

  # POST /ingredient_names
  # POST /ingredient_names.json
  def create
    @ingredient_name = IngredientName.new(params[:ingredient_name])

    respond_to do |format|
      if @ingredient_name.save
        format.html { redirect_to @ingredient_name, notice: 'Ingredient name was successfully created.' }
        format.json { render json: @ingredient_name, status: :created, location: @ingredient_name }
      else
        format.html { render action: "new" }
        format.json { render json: @ingredient_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ingredient_names/1
  # PUT /ingredient_names/1.json
  def update
    @ingredient_name = IngredientName.find(params[:id])

    respond_to do |format|
      if @ingredient_name.update_attributes(params[:ingredient_name])
        format.html { redirect_to @ingredient_name, notice: 'Ingredient name was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ingredient_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredient_names/1
  # DELETE /ingredient_names/1.json
  def destroy
    @ingredient_name = IngredientName.find(params[:id])
    @ingredient_name.destroy

    respond_to do |format|
      format.html { redirect_to ingredient_names_url }
      format.json { head :no_content }
    end
  end

end
