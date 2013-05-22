class Question
  include Mongoid::Document
  field :text, type: String
  field :answer, type: String

  attr_accessible :quizzes, :user, :text, :answer

  has_and_belongs_to_many :quizzes
  belongs_to :user

  validates :text, presence: true
  validates :answer, presence: true
  validates :user, presence: true
end
