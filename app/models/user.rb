class User < ApplicationRecord
  validates :name, presence: true
  validates :phone, presence: true, length: { is: 11}

  validates_format_of :phone, with:  /\d[0-9]\)*\z/
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, allow_blank: true

  enum job_type: { '男': 0, '女': 1 }
  enum job_type: { '正式教师': 0, '退休教师': 1, '实习教师': 2 }
  enum job_status: { '正常': 0, '休假中': 1, '已离职': 2 }
  enum job_title: { '无': 0, '初级': 1, '中级': 2, '高级': 3 }
end
