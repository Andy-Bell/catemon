require_relative '../spec_helper'

feature "Enter Names" do
  scenario "submitting names" do
    sign_in_and_play
    expect(page).to have_content "Anna vs. Abdulla"
  end

end
