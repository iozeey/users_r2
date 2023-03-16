# frozen_string_literal: true

require "test_helper"

class UserTableHeaderComponentTest < ViewComponent::TestCase
  def test_component_renders_something_useful
    assert_equal(
      %(<thead>
          <tr>
            <th></th>
            <th>First Name</th>
            <th colspan="3">Actions</th>
          </tr>
        </thead>),
      render_inline(UserTableHeaderComponent.new(["First Name"])).to_html
    )
  end
end
