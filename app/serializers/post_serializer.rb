class PostSerializer < ActiveModel::Serializer
  attributes :id, :image, :start_date, :end_date, :notes
end
