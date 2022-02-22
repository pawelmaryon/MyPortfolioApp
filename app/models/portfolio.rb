class Portfolio < ApplicationRecord
  validates :website, format: { with: /w{3}[.].+[.].{2,}/, }

end
