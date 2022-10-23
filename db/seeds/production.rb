ActiveRecord::Base.transaction do
  AdminUser.create!(email: "admin@mail.ua", phone: '0507387960', password: 'password')
end