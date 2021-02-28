class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.boolean :relevant, nullable: false

      t.references :citation
      t.references :user

      t.timestamps
    end
  end
end
