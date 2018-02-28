class Spina::Category < ApplicationRecord
  has_many :sub_categories
  has_many :articles
end
