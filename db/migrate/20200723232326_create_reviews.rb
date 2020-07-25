class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :point
      t.string :content
      t.references :sweet, foreign_key: true

      t.timestamps
    end
  end
end
