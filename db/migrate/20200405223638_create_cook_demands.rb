class CreateCookDemands < ActiveRecord::Migration[6.0]
  def change
    create_table :cook_demands do |t|
      t.string :address
      t.string :recurrence

      t.timestamps
    end
  end
end
