class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :status, default: 0
      t.integer :amount
      t.date :date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
