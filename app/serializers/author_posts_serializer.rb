class AuthorPostsSerializer < ActiveModel::Serializer
  attributes :title, :short_content
  belongs_to :author
  # has_many :tags, serializer: TagSerializer

  def short_content
    if object.content.length > 40
      object.content[0..39] + '...'
    else
      object.content
    end
  end
end
