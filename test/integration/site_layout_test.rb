require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
  end

  test "micropost counts" do
    before { click_link "delete", match: :first }
    it "should be singular when count eq to 1" do
      expect(page).to have_selector("span", text: "1 micropost")
    end
  end
end

