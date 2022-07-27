class RequestSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id, :image, :description, :start_date, :end_date, :accepted, :accepted_by
  has_many :connections
  belongs_to :user
end
