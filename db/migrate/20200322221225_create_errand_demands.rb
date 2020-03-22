class CreateErrandDemands < ActiveRecord::Migration[6.0]
  def change
    create_table :errand_demands do |t|
      t.string :address

      t.timestamps
    end
  end
end
