module RecipesHelper
  def ingreedyparse(text)
    recipe_array = text.split(/[\r\n]+/)
    recipe_array.map { |item| Ingreedy.parse(item).ingredient }
  end
end
