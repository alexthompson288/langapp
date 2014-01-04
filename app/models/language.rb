class Language < ActiveRecord::Base
  attr_accessible :language

  has_many :sentences
  has_many :words
end
