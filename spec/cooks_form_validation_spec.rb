require "rails helper"

feature "cooks form validation" do
  scenario "completed successfully" do
    visit new_cook_path

    click_button "Create cook"

    expect(page).to have_content "Name cannot be blank"
  end
end