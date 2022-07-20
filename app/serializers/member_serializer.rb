class VolunteerSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :post_id, :email
end
