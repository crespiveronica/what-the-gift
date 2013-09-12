class Gift
  include Mongoid::Document
  
  embedded_in :user
  belongs_to :product
  field :score

  def liked
  	self.score.nil? ? false : self.score > 5
  end
end