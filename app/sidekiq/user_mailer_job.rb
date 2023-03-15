class UserMailerJob
  include Sidekiq::Job

  def perform(job_params)
    UserRemovedMailer.user_removed_email(to: job_params["email"]).deliver_later
  end
end