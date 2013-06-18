class Locale < ActiveRecord::Base
  has_many :display_names
  attr_accessible :language, :display_names

end
