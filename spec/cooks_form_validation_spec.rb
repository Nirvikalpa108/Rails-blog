require "rails_helper"

feature "cooks form validation" do
  scenario "completed successfully" do
    visit new_cook_path

    click_button "Create Cook"

    expect(page).to have_content ("Name can't be blank")
  end
end