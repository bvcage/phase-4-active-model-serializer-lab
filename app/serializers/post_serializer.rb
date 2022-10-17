class PostSerializer < ActiveModel::Serializer
  attributes :title, :content

  belongs_to :author
  has_many :tags

  def summary
    attributes :title, :short_content, :tags
  end

end
