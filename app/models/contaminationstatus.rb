class Contaminationstatus < ActiveRecord::Base
	belongs_to :agent
	belongs_to :matrix
	belongs_to :reference
	belongs_to :tenacity
	belongs_to :detection
	belongs_to :samplepreparation
	belongs_to :treatment
	belongs_to :spiking
end
	has_and_belongs_to_many :agents
	has_many :matrices
	has_many :treatments
	has_many :spikings
	has_many :samplepreparations
	has_many :detections
	has_many :tenacities
	has_many :contaminationstatuses