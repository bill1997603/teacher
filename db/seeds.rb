(1..1000).each do |i|
  ActiveRecord::Base.transaction do
    User.create(
      name: "a#{i}",
      gender:
    )
  end
end