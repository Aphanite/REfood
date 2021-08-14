class CreateSupermarkets < ActiveRecord::Migration[6.0]
  def change
    create_table :supermarkets do |t|
      t.string :name
      t.string :address
      t.string :logo

      t.timestamps
    end
  end
end
