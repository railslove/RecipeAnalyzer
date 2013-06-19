class Tag < ActiveRecord::Base
  has_many :display_names
  has_and_belongs_to_many :ingredients


  attr_accessible :title, :body, :display_name_id , :ingredients
end
