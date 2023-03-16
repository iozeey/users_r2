# frozen_string_literal: true

require "test_helper"

class UserTableHeaderComponentTest < ViewComponent::TestCase
  def test_component_second_heading
    headerArr = ["First"]
    render_inline(UserTableHeaderComponent.new(headerArr))
    assert_selector 'th[2]'
    assert_text "First"
  end
end
