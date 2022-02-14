class CreateTechnologies < ActiveRecord::Migration[5.2]
  def change
    create_table :technologies do |t|
      t.string :name
      t.integer :portfolio_id, index: true

      t.timestamps
    end
  end
end