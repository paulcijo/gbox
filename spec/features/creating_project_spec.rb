require "rails_helper"

RSpec.feature "Can create new Projects" do
	scenario "when inputs are valid" do
		visit "/"
		click_link "Add New Project"
		fill_in "Website", with: "http://betterproposals.io"
		fill_in "Keyword", with: "Proposal Software"
		click_button "Create Project"

		expect(page).to have_content "New Project created."
	end
end