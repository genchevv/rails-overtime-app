@user = User.create(email: "test@test.com",
                    password: "password",
                    password_confirmation: "password",
                    first_name: "John",
                    last_name: "Snow",
                    phone: "68120563322")

puts "1 User created"

AdminUser.create(email: "admin@test.com",
                 password: "password",
                 password_confirmation: "password",
                 first_name: "Admin",
                 last_name: "Name",
                 phone: "68120563322")

puts "1 AdminUser created"

100.times do |post|
   Post.create(date: Date.today, 
               rationale: "#{post} rationale content", 
               user_id: @user.id, 
               overtime_request: 2.5) 
end

puts "100 Posts have been created"