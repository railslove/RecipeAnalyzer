class DisplayName < ActiveRecord::Base
  belongs_to :tag
  belongs_to :locale
  attr_accessible :text, :locale_id, :tag_id
end
