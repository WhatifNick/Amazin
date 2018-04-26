class Book < ApplicationRecord
  belongs_to :author
  scope(:book_name, -> (b_name) { where("LOWER(title) like ?", "%#{b_name}%") })

  scope(:author_name, ->(a_name) {includes(:author).references(:author).where("LOWER(authors.name) like ?", "%#{a_name}%") })

end
