class Spina::Course < ApplicationRecord
  has_many :students, dependent: :nullify
end
