class CreateHomeworkDemands < ActiveRecord::Migration[6.0]
  def change
    create_table :homework_demands do |t|
      t.string :matiere
      t.string :recurrence

      t.timestamps
    end
  end
end
