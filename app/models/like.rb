class Like < ApplicationRecord
  belongs_to :photo
  belongs_to :user
  validates :user_id, uniqueness: { scope: :photo_id,
    message: "already liked this photo." }, presence: true
    validates :photo_id, presence: true
end
