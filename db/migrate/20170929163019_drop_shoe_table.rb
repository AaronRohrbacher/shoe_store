class DropShoeTable < ActiveRecord::Migration[5.1]
  def change
    drop_table(:shoes)
  end
end
