class CreateRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table(:fronts) do |t|
      t.column(:store_id, :int)
      t.column(:brand_id, :int)
      t.column(:shoe_id, :int)
    end

    create_table(:stores) do |t|
      t.column(:name, :string)
    end

    create_table(:brands) do |t|
      t.column(:name, :string)
    end

    create_table(:shoes) do |t|
      t.column(:name, :string)
      t.column(:description, :string)
      t.column(:price, :float)
    end
  end
end
