class Request < ApplicationRecord
    belongs_to :user
    has_many :connections, through: :users

    validates :title, :user_id, :image, :description, :start_date, :end_date, :accepted, :accepted_by, presence: true
end
