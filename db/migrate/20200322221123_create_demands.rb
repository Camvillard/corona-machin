class CreateDemands < ActiveRecord::Migration[6.0]
  def change
    create_table :demands do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :status
      t.text :message
      t.references :tag, null: false, foreign_key: true
      t.integer :need_id
      t.string :need_type

      t.timestamps
    end
  end
end
