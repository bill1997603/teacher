class User < ApplicationRecord
  enum job_type: { '实习教师': 0, '正式教师': 1, '退休教师': 2 }
  enum job_status: { '正常': 0, '休假中': 1, '已离职': 2 }
  enum job_title: { '无': 0, '初级': 1, '中级': 2, '高级': 3 }
end
