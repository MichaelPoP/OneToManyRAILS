class Author < ActiveRecord::Base
  validates :name, length: {in: 2...20}
  validates :name, presence: true
  has_many :books, dependent: :destroy

end

