 
#my_password = BCrypt::Password.create("my password")
# puts my_password

# my_password.version              #=> "2a"
# my_password.cost                 #=> 10
# my_password == "my password"     #=> true
# my_password == "not my password" #=> false
 

# my_password = BCrypt::Password.new("$2a$12$oNtGdi7zhxIQNCdlm38mA.Z87CfeJKV9T8wgXwfa0t35xmF6YOzU2")
# puts my_password == "my password"     #=> true
#  my_password == "not my password" #=> false

module Crud

    require 'bcrypt'

    puts "is working"
    def create_hash_digest (password)
        BCrypt::Password.create(password)
    end

    def Crud.verify_hash_digest (password)
        BCrypt::Password.new(password)
    end

    def create_secure_users (list_of_users)
        list_of_users.each do |user_record|
            user_record[:password] = create_hash_digest(user_record[:password])
        end
        list_of_users
    end

    def authenticate_users(username, password, list_of_users)
        list_of_users.each do |users_record|
            if users_record[:username] == username && verify_hash_digest(users_record[:password]) == password
                return users_record
            end
        end
        "credentials not correct"
    end


end