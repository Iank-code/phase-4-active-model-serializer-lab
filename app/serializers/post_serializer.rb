class PostSerializer < ActiveModel::Serializer
  attributes :title, :content

  belongs_to :author, serializer: PostAuthorSerializer
  has_many :tags, serializer: PostTagSerializer
end
