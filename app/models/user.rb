class User < ApplicationRecord
    validates :email, presence: true
    validates :username, presence: true

    after_destroy :send_removed_mail

    def self.search(params)
        records = User.all
        records = records.where('gender ILIKE ?', "#{params[:gender]}%") if params[:gender].present?
        records = records.where('height ILIKE ?', "#{params[:height]}%")  if params[:height].present?
        records = records.where('"firstName" ILIKE ?', "#{params[:firstName]}%")  if params[:firstName].present?
        records = records.where('"lastName" ILIKE ?', "#{params[:lastName]}%")  if params[:lastName].present?
        records = records.where('"maidenName" ILIKE ?', "#{params[:maidenName]}%")  if params[:maidenName].present?
        records = records.where('email ILIKE ?', "#{params[:email]}%")  if params[:email].present?
        order_by(records, params)
    end

    def send_removed_mail
        job_params = {}
        job_params["email"] = self.email
        UserMailerJob.perform_in(30.minutes, job_params)
    end
end
