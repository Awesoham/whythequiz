class Quiz
  include Mongoid::Document
  field :name, type: String
  attr_accessible :user, :questions, :name
  has_and_belongs_to_many :questions
  belongs_to :user

  validates :user, presence: true
  validates :name, presence: true
end
