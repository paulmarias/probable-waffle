class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.string :title
      t.text :body
      t.string :make
      t.string :price

      t.timestamps
    end
  end
end
