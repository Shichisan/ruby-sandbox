require 'test_helper'

class Mutations::CreateUserTest < ActiveSupport::TestCase
  def perform(args = {})
    Mutations::CreateUser.new(object: nil, context: {}).resolve(args)
  end

  test 'create new user' do
    user = perform(
      name: 'test user',
      auth_provider: {
        email: {
          email: 'email@example.com',
          password: '[ommited]'
        }
      }
    )

    assert user.persisted?
    assert_equal user.name, 'test user'
    assert_equal user.email, 'email@example.com'
  end
end
