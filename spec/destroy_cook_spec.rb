require "rails_helper"

feature "destroy cook" do
  scenario "successfully" do
    cook = Cook.create!(
        name: "TEST_NAME",
        cuisine: "TEST_CUISINE",
        city: "TEST_CITY",
        )

    visit cook_path(cook)

    click_button "Destroy"

    expect(page).not_to have_content "TEST_DIFFERENT_NAME"
  end
end