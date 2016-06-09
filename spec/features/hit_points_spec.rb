require_relative '../spec_helper'

feature "Viewing player 2's Hit Points " do
	scenario "See Player 2's Hit Points" do
		sign_in_and_play
		expect(page).to have_content "Abdulla: 60 HP"
	end

	scenario"see Player 2's hitpoints after attack" do
		sign_in_and_play
		click_button "Attack"
		click_button "Continue"
		expect(page).to have_content "Abdulla: 50 HP"
	end
end

feature "Viewing player 1's Hit Points " do
	scenario "See Player 1's Hit Points" do
		sign_in_and_play
		expect(page).to have_content "Anna: 60 HP"
	end

	scenario"see Player 1's hitpoints after attack" do
		sign_in_and_play
		2.times do
			click_button "Attack"
			click_button "Continue"
		end
		expect(page).to have_content "Anna: 50 HP"
	end
end
