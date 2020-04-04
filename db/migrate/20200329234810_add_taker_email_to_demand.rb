class AddTakerEmailToDemand < ActiveRecord::Migration[6.0]
  def change
    add_column :demands, :taker_email, :string
  end
end
