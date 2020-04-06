# require_relative 'crud'

# class Student
#     include Crud
#     attr_accessor :first_name, :last_name, :email, :username, :password
   
#     def initialize(firstname, lastname, username, email, password)
#       @first_name = firstname
#       @last_name = lastname
#       @username = username
#       @email = email
#       @password = password
#     end
   
#     def to_s
#       "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username},
#                     email address: #{@email}"
#     end
   
#   end
   
#   mashrur = Student.new("Mashrur", "Hossain", "mashrur1", "mashrur@example.com",
#                         "password1")
#   john = Student.new("John", "Doe", "john1", "john1@example.com",
#                         "password2")
  
# hashed_password = mashrur.create_hash_digest(mashrur.password)
# puts hashed_password
  


class Student
  
  attr_accessor :first_name, :last_name, :email, :username, :password #instead of
  #using redudant code, you can use attributes accessor (getter and setter)


  # Instead of defining this, you can use a method to initizalize every
  #atribute and you can set all atributs with just one line of code
  # @first_name
  # @last_name
  # @email
  # @username
  # @password

  # def first_name=(name) 
  #   @first_name = name
  # end

  # def first_name 
  #   @first_name
  # end 
  
  # def last_name=(name) 
  #   @last_name = name
  # end

  # def last_name 
  #   @last_name
  # end 

  def initialize (firstname, lastname, username, email, password)
    
    @first_name = firstname
    @last_name = lastname
    @email = email
    @username = username
    @password = password

  end

  def to_s 
    "first name: #{@first_name}, last name: #{@last_name}, username: #{@user_name}, email: #{@email},password: #{@password}"
  end

end
  
  
sergio = Student.new("sergio", "reyes", "sergiora", "sergio@example.com", "password1")
puts sergio
joe = Student.new("joe", "yeah", "yeahyeah", "joe@example.com", "password4")
puts joe
sergio.last_name = joe.last_name
puts "sergio is alterated"
puts sergio
# sergio.first_name = "sergio"
# puts sergio.first_name
# sergio.last_name = "reyes"
# puts sergio.last_name
# sergio.email = "sergio@example.com"
# puts sergio.email
# sergio.password = "password1"
# puts sergio.password