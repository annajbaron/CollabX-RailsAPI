class User < ApplicationRecord
  has_secure_password
  before_create :generate_api_key

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: VALID_EMAIL_REGEX
  validates :first_name, :last_name, presence: true

  has_many :follows, dependent: :destroy
  has_many :followed_brands, through: :likes, source: :brand

  def full_name
    "#{first_name} #{last_name}"
  end

  private
  def generate_api_key
    loop do
      self.api_key = SecureRandom.hex(32)
      break unless User.exists?(api_key: api_key)
    end
  end
end
