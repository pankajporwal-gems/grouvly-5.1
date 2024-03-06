class UserSerializer < ActiveModel::Serializer

  def self.root
    'user'
  end

  attributes :id, :age, :membership_type, :name, :slug

  has_one :user_info
end
