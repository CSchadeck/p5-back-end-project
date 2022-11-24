class Request < ApplicationRecord
    belongs_to :user
    has_many :connections
    has_many :users, through: :connections

    validates :title, :user_id, :description, :start_date, :end_date, presence: true
end
