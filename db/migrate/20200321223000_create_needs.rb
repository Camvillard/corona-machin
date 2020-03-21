class CreateNeeds < ActiveRecord::Migration[6.0]
  def change
    create_table :needs do |t|
      t.string :address
      t.string :name
      t.string :phone
      t.string :email
      t.string :status
      t.text :message
      t.references :tag, null: false, foreign_key: true
      t.references :type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
