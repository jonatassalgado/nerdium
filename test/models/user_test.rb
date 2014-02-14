require 'test_helper'

class UserTest < ActiveSupport::TestCase


  test "a user should enter a first name" do
  	user = User.new

  	assert !user.save
  	assert !user.errors[:first_name].empty?
  end

  test "a user should enter a last name" do
  	user = User.new

  	assert !user.save
  	assert !user.errors[:last_name].empty?
  end

  test "a user should enter a profile name" do
  	user = User.new

  	assert !user.save
  	assert !user.errors[:profile_name].empty?
  end

  test "a user should have a unique profile name" do
  	user = User.new
  	user.profile_name = users(:user_block).profile_name

  	assert !user.save
  	assert !user.errors[:profile_name].empty?
	end

  test "a user should have a unique email" do
    user = User.new
    user.email = users(:user_block).email

    assert !user.save
    assert !user.errors[:email].empty?
  end

  test "a user should enter a profile name unless or equal then 3 characters" do
    user = User.new
    user.profile_name = 12
    
    assert !user.save
    assert !user.errors[:profile_name].empty?
    assert user.errors[:profile_name].include?("O nome de usuarios precisa ter mais de 2 caracteres.")
  end

	test "a user should have a profile name without spaces" do
		user = User.new
		user.profile_name = "user profile name with spaces"

		assert !user.save
		assert !user.errors[:profile_name].empty?
		assert user.errors[:profile_name].include?("O nome do perfil nao pode ter espacos.")
	end


end
