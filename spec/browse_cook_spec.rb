require "rails_helper"

feature "browse cook" do
  scenario "successfully" do
    cook = Cook.create!(
      name: "TEST_NAME",
      cuisine: "TEST_CUISINE",
      city: "TEST_CITY",
    )

    visit cook_path(cook)

    expect(page).to have_content "TEST_NAME"
    expect(page).to have_content "TEST_CUISINE"
    expect(page).to have_content "TEST_CITY"
  end

  scenario "and edit successfully" do
    cook = Cook.create!(
        name: "TEST_NAME",
        cuisine: "TEST_CUISINE",
        city: "TEST_CITY",
    )

    visit cook_path(cook)

    click_link "Edit"

    fill_in "Name", with: "TEST_DIFFERENT_NAME"
    click_button "Update Cook"

    expect(page).to have_content "TEST_DIFFERENT_NAME"
  end

  scenario "and destroy" do
    cook = Cook.create!(
        name: "TEST_NAME",
        cuisine: "TEST_CUISINE",
        city: "TEST_CITY",
    )

    visit cook_path(cook)

    click_button "Destroy"

    expect(page).not_to have_content "TEST_DIFFERENT_NAME"
  end

  scenario "and go back" do
    cook = Cook.create!(
        name: "TEST_NAME",
        cuisine: "TEST_CUISINE",
        city: "TEST_CITY",
    )

    visit cook_path(cook)
    click_link "Back"
    expect(page).to have_content "Find cooks near you"
  end
end
