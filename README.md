for sidekiq

- Install redis
    -- brew install redis
- Run sidekiq as saperate process
    -- bundle exec sidekiq --environment development -C config/sidekiq.yml

# Commands

./bin/rails generate sidekiq:job <NewWorkerJob>
./bin/rails generate component <NewComponentName>
./bin/rails test test/models/user_test.rb
