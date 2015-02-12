class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:idme]

  has_many :products, through: :user_products
  has_many :user_products

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid, login: auth.uid).first_or_create do |user|
      user.affiliation = auth.info.affiliation if auth.info.verified
      user.password = auth.uid.reverse * 2
    end
  end

  def self.new_with_session(params,session)
    super.tap do |user|
      if data = session["devise.idme_data"] && session["devise.idme_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  def email_required?
    false
  end
end
