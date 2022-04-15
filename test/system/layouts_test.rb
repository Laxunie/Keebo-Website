require "application_system_test_case"

class LayoutsTest < ApplicationSystemTestCase
  setup do
    @layout = layouts(:one)
  end

  test "visiting the index" do
    visit layouts_url
    assert_selector "h1", text: "Layouts"
  end

  test "should create layout" do
    visit layouts_url
    click_on "New layout"

    fill_in "Size", with: @layout.size
    click_on "Create Layout"

    assert_text "Layout was successfully created"
    click_on "Back"
  end

  test "should update Layout" do
    visit layout_url(@layout)
    click_on "Edit this layout", match: :first

    fill_in "Size", with: @layout.size
    click_on "Update Layout"

    assert_text "Layout was successfully updated"
    click_on "Back"
  end

  test "should destroy Layout" do
    visit layout_url(@layout)
    click_on "Destroy this layout", match: :first

    assert_text "Layout was successfully destroyed"
  end
end
