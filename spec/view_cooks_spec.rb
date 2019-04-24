require "rails_helper"

feature "view cooks" do
  scenario "user can see homepage" do
    visit root_path
    expect(page).to have_content "Batch-it!"
  end

  scenario "user can visit new cook form from homepage" do
    visit root_path
    click_link "I am a cook"
    expect(page).to have_content "New Cook"
  end
end