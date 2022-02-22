class AddWebsiteToPortfolio < ActiveRecord::Migration[6.0]
  def change
    add_column :portfolios, :website, :text
  end
end
