module RecipesHelper
  def ingreedyparse(text)
    recipe_array = text.split(/[\r\n]+/)
    recipe_array.map { |item| Ingreedy.parse(item).ingredient }
  end

  def ingr_name_creator(local_array)
    local_array.each do |item|
      ingr_name = IngredientName.new
      ingr_name.locale_id = 1
      ingr_name.expression = item.to_s
      ingr_name.save
    end
  end


end
