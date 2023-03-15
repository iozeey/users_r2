class UserRemovedMailer < ApplicationMailer
    def user_removed_email to
        mail(to: to, subject: "Removed")
    end
end
