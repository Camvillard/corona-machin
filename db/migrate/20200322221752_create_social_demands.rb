class CreateSocialDemands < ActiveRecord::Migration[6.0]
  def change
    create_table :social_demands do |t|
      t.string :recurrence

      t.timestamps
    end
  end
end
