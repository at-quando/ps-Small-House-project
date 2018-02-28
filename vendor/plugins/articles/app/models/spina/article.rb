class Spina::Article < ApplicationRecord
  mount_uploader :cover, CoverUploader
  belongs_to :category, optional: true
  belongs_to :sub_category, optional: true
end