class AddKeywordsAndDescriptionToSites < ActiveRecord::Migration
  def change
    add_column :sites, :keywords, :text
    add_column :sites, :description, :text
  end
end
