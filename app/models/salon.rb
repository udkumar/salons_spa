class Salon < ApplicationRecord

	validates :salon_name, presence: true
	validates :gstn, presence: true, format: {with: /[0-9]{2}[A-Z]{3}[ABCFGHLJPTF]{1}[A-Z]{1}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1}/}
	validates :pan, presence: true

	belongs_to :user
	has_many :time_slots
	has_many :chairs
end
