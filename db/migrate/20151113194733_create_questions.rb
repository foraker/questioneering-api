class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :site, index: true, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
