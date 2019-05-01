require "rails_helper"

feature "user views cooks" do
  scenario "successfully" do
    Cook.create!(name: "TEST_NAME", cuisine: "TEST_CUISINE", city: "TEST_CITY")

    visit cooks_path

    expect(page).to have_content "TEST_NAME"
    expect(page).to have_content "TEST_CUISINE"
    expect(page).to have_content "TEST_CITY"

    expect(page).to have_link "Home"
    expect(page).to have_link "New cook"
  end
end
