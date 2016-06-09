require_relative '../spec_helper'

feature "changes turns" do
  scenario "show player 1" do
    sign_in_and_play
    expect(page).to have_content "Anna's turn"
  end

  scenario "shows player 2" do
    sign_in_and_play
    click_button "Attack"
    click_button "Continue"
    expect(page).to have_content "Abdulla's turn"
  end
end
