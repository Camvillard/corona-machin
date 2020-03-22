class AddTitleToDemand < ActiveRecord::Migration[6.0]
  def change
    add_column :demands, :title, :string
  end
end
