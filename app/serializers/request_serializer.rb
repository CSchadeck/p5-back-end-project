class RequestSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id, :description, :start_date, :end_date, :accepted, :accepted_by
end
