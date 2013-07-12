#encoding: utf-8
class DisplayName < ActiveRecord::Base
  belongs_to :tag
  belongs_to :locale
  attr_accessible :text, :locale_id, :tag_id


  # METHODS defining the 14 main allergens display_names in languages (in order or query conditions): ENGLISH, FRENCH, GERMAN.
  # Gets the display_names only.
  # As many query conditions as number of languages. If less, see each self method commented notes.
  # USE THESE METHODS/SCOPES TO QUERY INGREDIENTS OR INGREDIENT_NAMES THAT ARE RELATED TO THIS DISPLAY_NAMES THROUGH TAGS.

  # 1 GLUTEN
  def self.contains_gluten
    where(:text => "Gluten")
  end

  # 2 SHELLFISH
  def self.contains_shellfish
    where("text = 'Shellfish' OR text = 'Crustacés' OR text = 'Krebstiere'")
  end

  # 3 EGG
  def self.contains_egg
    where("text = 'Egg' OR text = 'Œuf' OR text = 'Ei'")
  end

  # 4 FISH
  def self.contains_fish
    where("text = 'Fish' OR text = 'Poisson' OR text = 'Fisch'")
  end

  # 5 PEANUT
  def self.contains_peanut
    where("text = 'Peanut' OR text = 'Arachide' OR text = 'Erdnuss'")
  end

  # 6 SOJA. Note: same display_name 'Soja' in ENGLISH, FRENCH, GERMAN
  def self.contains_soja
    where("text = 'Soja'")
  end

  # 7 MILK
  def self.contains_milk
    where("text = 'Milk' OR text = 'Lait' OR text = 'Milch'")
  end

  # 8 NUTS
  def self.contains_nuts
    where("text = 'Nuts' OR text = 'Fruits à coque' OR text = 'Nüsse'")
  end

  # 9 CELERY
  def self.contains_celery
    where("text = 'Celery' OR text = 'Céleri' OR text = 'Sellerie'")
  end

  # 10 MUSTARD
  def self.contains_mustard
    where("text = 'Mustard' OR text = 'Moutarde' OR text = 'Senf'")
  end

  # 11 SESAME
  def self.contains_sesame
    where("text = 'Sesame' OR text = 'Sésame' OR text = 'Sesam'")
  end

  # 12 SULFITE
  def self.contains_sulfite
    where("text = 'Sulfite' OR text = 'Sulphites' OR text = 'Schwefel'")
  end

  # 13 LUPIN. Note: Same display_name 'Lupin' in ENGLISH, FRENCH
  def self.contains_lupin
    where("text = 'Lupin' OR text = 'Lupinen'")
  end

  # 14 MOLLUSCS
  def self.contains_molluscs
    where("text = 'Molluscs' OR text = 'Mollusques' OR text = 'Weichtiere'")
  end

  # SCOPES
  # named scopes calling self methods to get the allergens display_names from 14 main allergens
  scope :gluten, contains_gluten
  scope :shellfish, contains_shellfish
  scope :egg, contains_egg
  scope :fish, contains_fish
  scope :peanut, contains_peanut
  scope :soja, contains_soja
  scope :milk, contains_milk
  scope :nuts, contains_nuts
  scope :celery, contains_celery
  scope :mustard, contains_mustard
  scope :sesame, contains_sesame
  scope :sulfite, contains_sulfite
  scope :lupin, contains_lupin
  scope :molluscs, contains_molluscs

  # Usage Example: (rails console) calling 'DisplayName.gluten' gives the DisplayNames objects matching contains_gluten method conditions.

end
