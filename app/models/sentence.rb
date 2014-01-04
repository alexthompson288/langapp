class Sentence < ActiveRecord::Base
  attr_accessible :language_id, :master_sentence_id, :sentence, :category_ids

  belongs_to :language
  has_and_belongs_to_many :categories

end
