class Atfsc < ActiveRecord::Base
	belongs_to :atfc
	validates :atfc, presence: true
end
