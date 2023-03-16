# frozen_string_literal: true

require "test_helper"

class UserTableRowComponentTest < ViewComponent::TestCase
  def test_component_renders_something_useful
    assert_equal(
      %(<tr id="user_5">
          <td><input type="checkbox" name="users[]" id="" value="5" class="delete_multiple_checkbox"></td>
          <td>Mavis</td>
          <td>Schultz</td>
          <td>kmeus4@upenn.edu</td>
          <td>male</td>
          <td>188</td>
          <td><a href="/users/5/edit">Edit</a></td>
          <td><a data-confirm="Are you sure?" rel="nofollow" data-method="delete" href="/users/5">Destroy</a></td>
        </tr>),
      render_inline(UserTableRowComponent.new(User.new(
        id: 5,
        firstName: "Mavis",
        lastName: "Schultz",
        email: "kmeus4@upenn.edu",
        gender: "male",
        height: 188,
        ))).to_html
    )
  end
end
