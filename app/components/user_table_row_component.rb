# frozen_string_literal: true

class UserTableRowComponent < ViewComponent::Base
    def initialize(user)
        @user = user
    end
end
