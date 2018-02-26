class Spina::Teacher < ApplicationRecord
  mount_uploader :avatar, AvatarUploader

  def name
    if super.presence
      read_attribute(:name).split(/ |\_/).map(&:capitalize).join(" ")
    end
  end
end
