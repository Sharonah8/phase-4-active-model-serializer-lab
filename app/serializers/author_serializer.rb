class AuthorSerializer < ActiveModel::Serializer
  attributes :name

  has_many :posts, serializer: ShortContentSerializer
  has_one :profile

  # def short_content
  #   "#{self.object.description[0..39]}..."
  # end
end
