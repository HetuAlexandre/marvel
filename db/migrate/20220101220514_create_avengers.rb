class CreateAvengers < ActiveRecord::Migration[6.1]
  def change
    create_table :avengers do |t|
      t.string :hero_name
      t.string :real_name
      t.string :age
      t.string :description
      t.string :statut

      t.timestamps
    end
  end
end
