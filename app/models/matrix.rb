class Matrix < ActiveRecord::Base
	has_many :contaminationstatuses
	has_many :agents, through: :contaminationstatuses
	has_many :treatments
	belongs_to :reference
end
