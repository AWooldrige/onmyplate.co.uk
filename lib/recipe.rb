module RecipeHelper

  def recipes
    @items.select { |item| item[:kind] == 'recipe' }
  end

  def date_sorted_recipes
    recipes.sort_by { |recipe| attribute_to_time(recipe[:created_at]) }.reverse
  end
end

include RecipeHelper
