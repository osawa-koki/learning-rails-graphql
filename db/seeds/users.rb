# frozen_string_literal: true

User.find_or_create_by!(id: 1) do |user|
  user.name = 'hogehoge'
  user.email = 'hogehoge@example.com'
  user.birthday = Date.new(2000, 1, 1)
  user.lucky_number = 1
end

User.find_or_create_by!(id: 2) do |user|
  user.name = 'fugafuga'
  user.email = 'fugafuga@example.com'
  user.birthday = Date.new(2000, 2, 2)
  user.lucky_number = 2
end

User.find_or_create_by!(id: 3) do |user|
  user.name = 'piyopiyo'
  user.email = 'piyopiyo@example.com'
  user.birthday = Date.new(2000, 3, 3)
  user.lucky_number = 3
end

User.find_or_create_by!(id: 4) do |user|
  user.name = 'barbar'
  user.email = 'barbar@example.com'
  user.birthday = Date.new(2000, 4, 4)
  user.lucky_number = 4
end

User.find_or_create_by!(id: 5) do |user|
  user.name = 'bazbaz'
  user.email = 'bazbaz@example.com'
  user.birthday = Date.new(2000, 5, 5)
  user.lucky_number = 5
end
