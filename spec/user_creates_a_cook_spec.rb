require "rails_helper"

feature "user creates a cook" do
  scenario "successfully" do
    visit new_cook_path

    fill_in "Name", with: "TEST_NAME"
    fill_in "Cuisine", with: "TEST_CUISINE_TYPE"
    fill_in "City", with: "TEST_CITY"
    click_button "Create Cook"

    expect(page).to have_content "TEST_NAME"
    expect(page).to have_content "TEST_CUISINE_TYPE"
    expect(page).to have_content "TEST_CITY"
  end
end