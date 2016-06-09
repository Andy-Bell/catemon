require_relative '../spec_helper'

feature "Losing the game" do
  scenario "when player hits 0 hp" do
    sign_in_and_play
    10.times do
      click_button "Attack"
      click_button "Continue"
    end
    click_button "Attack"
    expect(page).to have_content("Abdulla loses!")
  end
end
