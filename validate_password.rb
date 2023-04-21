class ValidatePassword
  def initialize(password)
    @password = password
  end

  def perform
    regex = /^(?!.*(.)(?:.*\1){2})(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%&*+=:;?<>]).{6,24}$/
    password =~ regex ? true : false
  end

  private

  attr_reader :password
end
