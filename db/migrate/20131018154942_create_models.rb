class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :Category
      t.string :name
      t.text :desc

      t.timestamps
    end
  end
end
