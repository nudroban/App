# frozen_string_literal: true

ActiveRecord::Base.transaction do
  AdminUser.create!(email: 'adminadmin@mail.ua', phone: '0507387900', password: 'password')
  categories = %w[dantist therapevt family-doctor lor]
  categories.each do |category|
    Category.create(name: "#{category}")
  end
  Doctor.create(name: "Bishop", email: "bishop@mail.ua", phone: '0661234567', password: 'qwqwqw', category_id: 1)
  Doctor.create(name: "Evil", email: "evil@mail.ua", phone: '0661234568', password: 'qwqwqw', category_id: 1)
end
