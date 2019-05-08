require "rails_helper"

feature "edit cook" do
  scenario "successfully" do
    cook = Cook.create!(
      name: "TEST_NAME",
      cuisine: "TEST_CUISINE",
      city: "TEST_CITY",
    )

    visit edit_cook_path(cook)
    fill_in "Name", with: "TEST_DIFFERENT_NAME"
    click_button "Update Cook"

    expect(page).to have_content "TEST_DIFFERENT_NAME"
  end
end
