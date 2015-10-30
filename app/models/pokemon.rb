class Pokemon < ActiveRecord::Base
	belongs_to :trainer
	validates :name, presence: true
	validates :name, uniqueness: true
end
