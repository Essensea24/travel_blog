class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	validates :title, presence: true, length: { minimum: 5 } #to ensure that all articles have a title that is at least five characters long
	validates :text, length:
	 { 	minimum: 20,
	 	maximum: 200
	 }
	 validates :country, presence: true
end
