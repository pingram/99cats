class Cat < ActiveRecord::Base

  validates :age, :name, :sex, presence: true
  validates :age, numericality: true
  validates :sex, inclusion: { in: %w(M F) }

  has_many(
    :rental_requests,
    class_name: "CatRentalRequest",
    foreign_key: :cat_id,
    primary_key: :id,
    :dependent => :destroy
  )
  belongs_to :owner,
            class_name: "User",
            foreign_key: :user_id,
            primary_key: :id

end
