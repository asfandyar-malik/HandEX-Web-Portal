class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    #
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :omniauthable

  validates :company_name, presence: true, length: {maximum: 50}

  has_many :insurances
  has_many :invite_exporters
  has_many :export_applications
  has_many :importer_informations
  has_many :prefills
  has_many :webids

  def self.from_omniauth(auth)
    user = User.where(email: auth.info.email).first

    if user
      return user
    else
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
          user.email        = auth.info.email
          user.password     = Devise.friendly_token[0, 20]
          user.company_name = auth.info.name
          user.image        = auth.info.image
          user.uid          = auth.uid
          user.provider     = auth.provider

        # If you are using confirmable and the provider(s) you use validate emails,
        # uncomment the line below to skip the confirmation emails.
        user.skip_confirmation!
      end
    end
  end

  protected

  def confirmation_required?
      false
  end

end