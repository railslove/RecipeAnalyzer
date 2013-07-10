module RecipesHelper
  def split_text_line(text)
    text.split(/[\r\n]+/)
  end

  def split_text_comma(text)
    text.split(/[',']+/)
  end


  def ingreedyparse(text)
    if split_text_line(text).size > 1
      recipe_array = split_text_line(text)
    else
      recipe_array = split_text_comma(text)
    end

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

  def check_image(recipe)
     if recipe.image_url?
       image_tag recipe.image_url, size: "120x120"
     else
        "No picture available"
     end
  end

end
