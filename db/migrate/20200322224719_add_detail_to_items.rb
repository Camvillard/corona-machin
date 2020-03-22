class AddDetailToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :detail, :string
  end
end
