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

  # test "a user should have a unique profile name" do
  #   user = User.new
  #   user.profile_name = users(:jay).profile_name
    # user.profile_name = 'jaykay'
    # user.email = "jay@email.com"
    # user.first_name = "Jay"
    # user.last_name = "Kay"
    # user.password = "password"
    # user.password_confirmation = "password"

    # users(:jay)

    # puts user.errors.inspect
  #   assert !user.save
  #   assert !user.errors[:profile_name].empty?
  # end

  test "a user should have a profile name without spaces" do
    user = User.new
    user.profile_name = "My Profile With Spaces"

    assert !user.save
    assert !user.errors[:profile_name].empty?
    assert user.errors[:profile_name].include?("Must be formatted correctly.")
  end

end
