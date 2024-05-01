# authentification.rb
user_list = {zakaria: "1234", yassine: "5678", mohamed: "91011"}

def check_user(user_list, username, password)
  user_list.each do |key, value|
    if key == username.to_sym && value == password
      return true
    end
  end
  return false
end

puts "Enter your username"
username = gets.chomp
puts "Enter your password"
password = gets.chomp


if check_user(user_list, username, password)
    puts "Welcome #{username}"
else
    puts "Invalid username or password"
end
