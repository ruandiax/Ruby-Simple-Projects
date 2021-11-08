# Data and Returns

users = [
    { username: "#", password: "password1"},
    { username: "#", password: "password2"},
    { username: "#", password: "password3"},
    { username: "#", password: "password4"},
    { username: "#", password: "password5"}
]

def auth_users (username, password , list_of_users)
    list_of_users.each do |user_record|
        if user_record[:username] == username && user_record[:password] == password
            return user_record
        end
    end
    "Credentials were NOT CORRECT!"
end

puts "Welcome to the RD14X Authenticator"

25.times {print "-"}
puts

puts "This Program will take input from the User and compare Password"
puts
puts "If Password is correct, you will get back the user object!"

puts


# Commands

attempts = 1
while attempts < 4

    print "Username:"
    username = gets.chomp
    print "Password:"
    password = gets.chomp

   authentication = auth_users(username, password, users)
   puts authentication

    puts "Press N to Quit or ANY other key to CONTINUE!"
    input = gets.chomp.downcase
    break if input == "N"
    attempts += 1
end

puts

puts "You have exceeded the number of Attempts!" if attempts == 4

