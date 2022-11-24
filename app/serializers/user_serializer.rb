class UserSerializer < ActiveModel::Serializer

  attributes :id, :username, :password_digest, :email, :bio
  has_many :requests

end
