# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#

10.times do |user|
  user = User.create(name: "User #{user}", password: "Pass #{user}")
  5.times {|i| Friend.create(name: "Friend #{user.name} #{i}", user_id: "#{user.id}")}
end
