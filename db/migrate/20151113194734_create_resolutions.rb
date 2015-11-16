class CreateResolutions < ActiveRecord::Migration
  def change
    create_table :resolutions do |t|
      t.references :site, index: true, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
