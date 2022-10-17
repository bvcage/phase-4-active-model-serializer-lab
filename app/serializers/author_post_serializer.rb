class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content, :tags_list

  has_many :tags

  def short_content
    self.object.content.slice(0,40) + "..."
  end

  def tags_list
    self.object.tags.map{|tag| tag.name}.join(', ')
  end

end
