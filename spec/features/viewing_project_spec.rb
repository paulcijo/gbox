require "rails_helper"

RSpec.feature "Can view projects" do
	scenario "successfully" do
		project = FactoryGirl.create(:project, website: "http://betterproposals.io", keyword:"Proposal Software")

		visit "/"
		click_link "http://betterproposals.io"
		expect(page.current_url).to eq project_url(project)
	end	
end