class CreateOpinions < ActiveRecord::Migration
  def change
    create_table :opinions do |t|
      t.string :name
      t.string :description
      t.timestamps null: false
    end
  end
end
