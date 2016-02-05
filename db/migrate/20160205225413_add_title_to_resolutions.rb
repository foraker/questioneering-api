class AddTitleToResolutions < ActiveRecord::Migration[5.0]
  def change
    add_column :resolutions, :title, :string
  end
end
