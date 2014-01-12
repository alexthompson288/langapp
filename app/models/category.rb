class Category < ActiveRecord::Base
  attr_accessible :category, :word_ids, :sentence_ids, :custom

  has_and_belongs_to_many :words
  has_and_belongs_to_many :sentences

  def categoryicon
  	self.category.gsub(' ','').gsub('-','').downcase + '.png'
  end	
end
