require "rails_helper"

feature "User views graph links" do
	scenario "Successfully" do
		visit root_path
		expect(page).to have_link("Bitcoin")	
		expect(page).to have_link("Etherum")	
		expect(page).to have_link("Nasdaq")	
	end
end