# class Crayon
# 	attr_reader :color, :texture

# 	def initialize(color, texture)
# 		@color = color
# 		@texture = texture
# 	end

# 	def details
# 		print "#{@color} and #{@texture}"
# 	end

# 	def self.about
# 		print "They are colorful"
# 	end
# end

# class Usage < Crayon
# 	def do_something
# 		puts "Draw a tree"
# 	end
# end


# use = Usage.new("Red", "Smooth")
# puts use
# puts use.color
# puts use.details
# puts Usage.about
# puts use.do_something

	# class Confection
	# 	def prepare
	# 		puts "Baking at 350 degrees for 25 minutes"
	# 	end
	# end

	# class BananaCake < Confection
	# end

	# class CupCake < Confection
	# 	def prepare
	# 		super
	# 		puts "Applying frosting"
	# 	end
	# end

	# bc = BananaCake.new()
	# cc = CupCake.new()

	# puts bc.prepare
	# puts cc.prepare
# class Profile
#   attr_accessor :full_name, :age, :address, :work
#   def initialize(full_name, age, address, work)
#   	@full_name = full_name
#   	@age = age
#   	@address = address
#   	@work  = work
#   end
# end

# my_profile = Profile.new('Juan', 18, 'Bulacan', 'Instructor')
# puts my_profile
# puts my_profile.full_name
# my_profile.full_name = 'Juan Cruz'

# my_profile.age = 25
# my_profile.work = 'Software Engineer'

# puts my_profile.full_name
# puts my_profile.age
# puts my_profile.work
# puts my_profile.address

module AdminPermisson
  def edit_users_profile
    puts "Admin updated all users profile"
  end
end

module BuyerPermission
  def buy
    puts "Buyer has bought an item"
  end

end

class User
  include AdminPermisson
  attr_accessor :username, :password, :ip_address

  def initialize(username, password, ip_address)
   @username = username
   @password = password
   @ip_address = ip_address
  end

  def admin_login
  	login
  end

  def change_password(new_pass)
  	@password = new_pass
  	puts @password
  end

  protected
  def login
    puts "User logged in. IP address: #{@ip_address}"
  end
end


class Admin < User
end


class Buyer < User
	include BuyerPermission
	def buyer_login
		puts "Buyer Login"
	end
end



## execute

my_admin = Admin.new('avionuser', 'password', '127.0.0.1')
my_admin.admin_login
my_admin.edit_users_profile
my_admin.change_password("admin_new_pass")

buyer = Buyer.new('juan', 'password', '127.0.0.1')
buyer.buyer_login
buyer.buy
buyer.change_password("buyer_new_pass")
