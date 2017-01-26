class Project < ApplicationRecord
	validates :website, presence:true
	validates :keyword, presence:true
end
