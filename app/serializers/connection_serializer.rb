class ConnectionSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :request_id
end
