Faker::Config.locale = 'zh-CN'

(1..1000).each do |i|
  start_at = DateTime.civil_from_format :local, 1970, 1, 1
  end_at = DateTime.civil_from_format :local, 1990, 12, 31

  rand_date_result = rand * (end_at - start_at) + start_at

  phone = Faker::PhoneNumber.cell_phone

  phone_last_char = i.to_s
  phone = phone.a[0..11 - (phone_last_char.size + 1)]

  ActiveRecord::Base.transaction do
    User.create(
      name: Faker::Name.name,
      gender: rand(2),
      job_status: rand(4),
      job_title: rand(3),
      job_type: rand(3),
      birth: Time.at(rand_date_result),
      phone: "#{phone}#{phone_last_char}"
    )
  end
end