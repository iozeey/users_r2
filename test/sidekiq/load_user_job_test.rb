require 'test_helper'
require 'minitest/autorun'
require 'sidekiq/testing'

class LoadUserJobTest < Minitest::Test
  def test_load_user_works
    assert_equal 0, LoadUsersJob.jobs.length
    url = "https://dummyjson.com/users?limit=30&skip=#{rand(0...5)}"
    LoadUsersJob.perform_async(url)
    assert_equal 1, LoadUsersJob.jobs.length
  end
end

