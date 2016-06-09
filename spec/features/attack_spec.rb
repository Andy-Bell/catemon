require_relative '../spec_helper'

feature "Attack Player 2 " do
	scenario "Attack Player 2" do
		sign_in_and_play
		click_button "Attack"
		expect(page).to have_content "Abdulla has been hit by Anna"
	end
end

feature "Attack Player 1" do
	scenario "Attack Player 1" do
		sign_in_and_play
		click_button "Attack"
		click_button "Continue"
		click_button "Attack"
		expect(page).to have_content "Anna has been hit by Abdulla"
	end
end
