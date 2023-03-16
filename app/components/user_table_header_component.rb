# frozen_string_literal: true

class UserTableHeaderComponent < ViewComponent::Base
    def initialize(headerNames)
        @header = headerNames
    end
end
