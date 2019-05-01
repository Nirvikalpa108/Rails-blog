require "rails_helper"

feature "user views cooks" do
  scenario "successfully" do
    visit cooks_path

    expect(page).to have_content "Cook"
    expect(page).to have_content "Cuisine"
    expect(page).to have_content "City"

    expect(page).to have_link "Home"
    expect(page).to have_link "New cook"
  end
end