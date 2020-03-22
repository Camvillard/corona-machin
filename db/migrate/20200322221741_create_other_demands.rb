class CreateOtherDemands < ActiveRecord::Migration[6.0]
  def change
    create_table :other_demands do |t|

      t.timestamps
    end
  end
end
