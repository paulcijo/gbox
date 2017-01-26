require "rails_helper"

RSpec.feature "Can create new Projects" do
	before do
		visit "/"
		click_link "Add New Project"
	end
	
	scenario "when inputs are valid" do
		fill_in "Website", with: "http://betterproposals.io"
		fill_in "Keyword", with: "Proposal Software"
		click_button "Create Project"

		expect(page).to have_content "New Project created."
	end

	scenario "when inputs are invalid" do
		#both inputs are important
		fill_in "Website", with: ""
		fill_in "Keyword", with: ""
		click_button "Create Project"

		expect(page).to have_content "Didn't create the Project."
	end
end