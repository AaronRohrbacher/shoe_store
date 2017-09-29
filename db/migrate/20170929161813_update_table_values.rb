class UpdateTableValues < ActiveRecord::Migration[5.1]
  def change

    drop_table(:stores)
    drop_table(:brands)
    drop_table(:shoes)

    create_table(:stores) do |t|
      t.column(:store, :string)
    end

    create_table(:brands) do |t|
      t.column(:brand, :string)
    end

    create_table(:shoes) do |t|
      t.column(:shoe, :string)
      t.column(:description, :string)
      t.column(:price, :float)
    end
  end
end
