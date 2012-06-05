class Profile < ActiveRecord::Base
  belongs_to :user

  attr_accesible :about
end
