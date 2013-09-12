class User < GenericUser
  attr_accessible :hobbies, :occupation
  before_save :hobbies_to_array

  has_many :whishlist, class_name: 'Product'
  embeds_many :gifts
  field :hobbies, type: Array
  field :occupation, type: String

  private

    def hobbies_to_array
        self.hobbies = self.hobbies.split(',')
    end

end