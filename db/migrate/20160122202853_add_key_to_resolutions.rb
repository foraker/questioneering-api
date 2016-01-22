class AddKeyToResolutions < ActiveRecord::Migration[5.0]
  def change
    add_column :resolutions, :key, :string
  end
end
