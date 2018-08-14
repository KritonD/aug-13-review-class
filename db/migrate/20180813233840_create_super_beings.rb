class CreateSuperBeings < ActiveRecord::Migration
  def change
    create_table :super_beings do |t|
      t.string :name
      t.string :power
      t.integer :confirmed_kills
      t.boolean :human
      t.integer :team_id
      t.integer :arch_nemesis_id

      t.timestamps null: false
    end
  end
end
