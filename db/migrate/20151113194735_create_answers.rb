class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :question, index: true, foreign_key: true
      t.references :resolution, index: true, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
