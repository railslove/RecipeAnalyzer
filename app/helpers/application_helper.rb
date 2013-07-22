module ApplicationHelper
  def ingr_name_look_up(ingredient_name)
    raw Ingredient.find_all_by_name_EN(ingredient_name.expression).map { |t| "#{t.name_EN}" }.join (' ')
  end

  def join_ingredient_tag_ids(ingredient)
     raw ingredient.tags.map { |dn| dn.id}.join(', ')
  end

end
