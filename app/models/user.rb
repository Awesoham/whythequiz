class User
  include Mongoid::Document
  rolify
  include Mongoid::Timestamps
  #TODO add :confirmable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  field :email,              type: String, default: ""
  field :encrypted_password, type: String, default: ""
  field :reset_password_token,   type: String
  field :reset_password_sent_at, type: Time
  field :remember_created_at, type: Time
  field :sign_in_count,      type: Integer, default: 0
  field :current_sign_in_at, type: Time
  field :last_sign_in_at,    type: Time
  field :current_sign_in_ip, type: String
  field :last_sign_in_ip,    type: String

  index({ email: 1 }, { unique: true, background: true })
  field :name, type: String

  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :encrypted_password

  attr_accessible :role_ids, as: :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :created_at, :updated_at, :quizzes

  has_many :quizzes
end
