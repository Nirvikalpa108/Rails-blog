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

  scenario "and go back" do
    cook = Cook.create!(
        name: "TEST_NAME",
        cuisine: "TEST_CUISINE",
        city: "TEST_CITY",
        )

    visit cook_path(cook)
    click_link "Back"
    expect(page).to have_text"Find cooks near you"
  end

  scenario "and update fails" do
    cook = Cook.create!(
        name: "TEST_NAME",
        cuisine: "TEST_CUISINE",
        city: "TEST_CITY",
        )

    visit edit_cook_path(cook)
    fill_in "Name", with: ""
    click_button "Update Cook"

    expect(page).to have_content "Name can't be blank"
  end
end

