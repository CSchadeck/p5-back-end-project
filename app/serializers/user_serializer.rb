class UserSerializer < ActiveModel::Serializer

  attributes :id, :username, :password_digest, :email, :bio, :request
  has_many :requests

end
