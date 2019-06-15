
class UpdateSchema2 < ActiveRecord::Migration[4.2]
  def up
    add_column :employees, :section_id, :integer 
    remove_column :employees, :busho
    create_table :sections do |t|
      t.integer :sec_name
      t.timestamps
    end
  end

  def down
    remove_column :employees, :section_id
    add_column :employees, :busho, :integer 
    drop_table :sections
  end

end
