require "rails_helper"

feature "view cooks" do
  scenario "user can see homepage" do
    visit root_path
    expect(page).to have_content "Batch-it!"
  end

  scenario "user can visit new cook form from homepage" do
    visit root_path
    click_button "I am a cook"
    visit new_post_path
    expect(page).to have_content "New Cook"
  end

  scenario "user can create a new cook post" do
    visit new_post_path

    fill_in :cook, with: "Test cook"
    fill_in "post_title", with: "Test cuisine"
    fill_in "post_content", with: "Test details describing the delicious food I cook"
    click_button "Create Post"

    #How do I tell RSpec which page to navigate to, given the url changes depending on the post creating eg /posts/12?
    visit posts_path
    expect(page).to have_content"Test cook"
    expect(page).to have_content"Test cuisine"
    expect(page).to have_content"Test details describing the delicious food I cook"
  end

  scenario "user fails to create a new cook post" do
    # user fills in incorrect number of characters OR not a string
    # error message is displayed
  end

  scenario "on the homepage" do
    # maximum 10 cooks are displayed on the list at any one time
    # (there is a "next" button to see more)
  end

  scenario "to show the full cook's post" do
    # there is a show button for each cook
    # user can click on show button
    # takes user to cook posts page
  end
  end


