require "rails_helper"

RSpec.feature "Can delete projects" do
	scenario "successfully" do
		project = FactoryGirl.create(:project, website: "http://betterproposals.io", keyword:"Proposal Software")

		visit "/"
		click_link "http://betterproposals.io"
		click_link "Delete Project"
		
		expect(page).to have_content "Project just got deleted."
		expect(page.current_url).to eq projects_url
		expect(page).to have_no_content "http://betterproposals.io"
	end	
end