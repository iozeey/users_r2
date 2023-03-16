require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "should not save user without email" do
    user = User.new
    user.username = "myusername"
    # user.email = "myusername@test.com"
    assert_not user.save, "User should have email"
  end

  test "should not allow duplicate user names" do
    user1 = User.create(username: "duplicate_user_name", password: "bo")
    user2 = User.new(username: "duplicate_user_name", password: "michelle")
    user1.save
    assert_not user2.save, "Saved a duplicate user name"
  end
end
