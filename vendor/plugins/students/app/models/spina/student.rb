class Spina::Student < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  has_many :photos
  belongs_to :course, optional: true

  def name
    if super.presence
      read_attribute(:name).split(/ |\_/).map(&:capitalize).join(" ")
    end
  end

  def self.auto_update_dept
    students = self.all
    students.each do |student|
      if !student.end_date && student.receive_day != Time.now
        # if (student.receive_day + (1 + student.dept).month) < Time.now
        #   student.increment!(:dept)
        #   puts student.name + 'đã không nộp tiền' + student.dept  + 'tháng'
        # end
        if student.receive_day.day == Time.now.day
          student.increment!(:dept)
          puts student.name + 'đã không nộp tiền' + student.dept  + 'tháng'
        end
      end
    end
  end
end