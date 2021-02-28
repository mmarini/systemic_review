class CreateAbstracts < ActiveRecord::Migration[5.2]
  def change
    create_table :abstracts do |t|
      t.text :content
      t.references :citation
      t.timestamps
    end
  end
end
