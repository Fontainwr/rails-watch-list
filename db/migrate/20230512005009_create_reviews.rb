class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.float :rating
      t.string :committed!
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
