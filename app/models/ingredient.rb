class Ingredient < ActiveRecord::Base

  has_many :ingredients_tags
  has_many :tags, :through => :ingredients_tags
  has_many :ingredient_names

  accepts_nested_attributes_for :tags
  accepts_nested_attributes_for :ingredients_tags

  attr_accessible :name_EN, :source, :tags, :tag_ids, :tags_attributes

  validates_presence_of :name_EN ,:on => :create, :message => "Field can't be blank"
  validates_presence_of :name_EN, :on => :update
  validates_uniqueness_of :name_EN



end
