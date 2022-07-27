class Request < ApplicationRecord
    belongs_to :user
    has_many :connections
    has_many :users, through: :connections

    validates :title, :user_id, :image, :description, :start_date, :end_date, :accepted_by, presence: true
end
