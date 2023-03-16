class LoadUsersJob
  require 'rest-client'

  include Sidekiq::Job

  def perform(url)
    users = RestClient.get url

    json = JSON.parse(users)
    json["users"].each do |user|
        User.create(user)
    end

    ActiveRecord::Base.connection.tables.each { |t| ActiveRecord::Base.connection.reset_pk_sequence!(t) }
  end
end
