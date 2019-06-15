class UpdateSchema1 < ActiveRecord::Migration[4.2]
  def up
    create_table :employees do |t|
      t.integer :emp_id
      t.integer :name
      t.integer :age
      t.integer :address
      t.integer :busho
      t.timestamps
    end
  end

  def down
    drop_table :employees
  end

end
