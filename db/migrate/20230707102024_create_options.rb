class CreateOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :options do |t|
      t.string :statement
      t.string :statement_ar
      t.integer :index
      t.string :unit
      t.boolean :is_range
      t.float :lower_limit
      t.float :uper_limit
      t.references :question

      t.timestamps
    end
  end
end
