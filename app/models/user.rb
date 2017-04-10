class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :rememberable, :trackable, :omniauthable

  def self.find_for_oauth(auth)
    user = User.where(uid: auth.uid, provider: auth.provider, name: auth.info.name).first

    unless user
      user = User.create(
        uid: auth.uid,
        provider: auth.provider,
        name: auth.info.name
      )
    end
    user
  end
end
