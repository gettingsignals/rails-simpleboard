require "test_helper"

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(
      name: "TestName",
      password: "foobar",
      password_confirmation: "foobar",
      admin: true)
  end

  test "check valid" do
    assert @user.valid?
  end
end
