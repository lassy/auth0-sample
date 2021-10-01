class User < ApplicationRecord

  has_many :authorities, class_name: "UserAuthority"

end
