class CreateCitations < ActiveRecord::Migration[5.2]
  def change
    create_table :citations do |t|
      t.string :title
      t.string :authors
      t.integer :published_year
      t.integer :pages
      t.string :journal

      t.timestamps
    end
  end
end
