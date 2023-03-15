for sidekiq

- Install redis
    -- brew install redis
- Run sidekiq as saperate process
    -- bundle exec sidekiq --environment development -C config/sidekiq.yml
