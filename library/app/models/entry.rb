class Entry < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 2 }
  validates :comment, presence: true, length: { minimum: 2 }
  validates :avatar_url, format: { with: /\Ahttp(s)?:/, allow_blank: true}
end
