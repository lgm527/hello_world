class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :body
      t.string :rating
      t.belongs_to :supplier, foreign_key: true

      t.timestamps
    end
  end
end
