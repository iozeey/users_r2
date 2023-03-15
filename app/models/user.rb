class User < ApplicationRecord

    after_destroy :send_removed_mail

    def self.search(params)
        records = User.all
        records = records.where('gender ILIKE ?', "#{params[:gender]}%") if params[:gender].present?
        records = records.where('height ILIKE ?', "#{params[:height]}%")  if params[:height].present?
        records = records.where('firstName ILIKE ?', "#{params[:name]}%")  if params[:name].present?
        records = records.where('lastName ILIKE ?', "#{params[:name]}%")  if params[:name].present?
        records = records.where('maidenName ILIKE ?', "#{params[:name]}%")  if params[:name].present?
        records = records.where('email ILIKE ?', "#{params[:email]}%")  if params[:email].present?
        order_by(records, params)
    end

    def send_removed_mail
        UserRemovedMailer.with(invite: self).user_removed_email(to: self.email).deliver
    end
end
