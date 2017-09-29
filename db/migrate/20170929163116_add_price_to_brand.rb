class AddPriceToBrand < ActiveRecord::Migration[5.1]
  def change
    drop_table(:brands)

    create_table(:brands) do |t|
      t.column(:brand, :string)
      t.column(:description, :string)
      t.column(:price, :float)
    end
  end
end
