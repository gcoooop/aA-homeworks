module Toyable
  extend ActiveSupport::Concern

  included do
    has_many :toys, as: :toyable
    validates :name, uniqueness: { scope: [:toyable] }
  end

  def receive_toy(name)
    self.toys << Toy.find_or_create_by(name: name, toyable_id: rand(1..11), toyable_type: self.class)
  end
end