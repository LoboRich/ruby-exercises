class Account
  attr_accessor :username
  attr_reader :password

  def initialize (password, username, role)
    @password = password
    @username  = username
    @role = role
  end

  def set_pass=new_pass
  	password(new_pass)
  end

  def new_password=new_pass
  	@password = new_pass
  	puts "Password changed to '#{new_pass}'"
  end

  def role
    puts "Role: #{@role}"
  end

  def new_role=role
    @role = role
    puts "Role changed to '#{role}'"
  end
end	

account = Account.new("strong_password", "rich", "admin")
puts account.username
puts account.username = "new_username_rich"
puts account.password
account.new_password = "new_strong_pass"
puts account.role
account.new_role = "new_role"
