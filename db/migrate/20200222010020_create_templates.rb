class CreateTemplates < ActiveRecord::Migration[6.0]
  def change
    create_table :templates do |t|
      t.string :template_name, null: false
      t.integer :account_id, null: false
      t.boolean :private, null: false, default: false
      t.boolean :r18, null: false, default: false
      
      t.text :description
      t.text :description_r18

      t.index :account_id
      t.index :template_name

      t.timestamps
    end
  end
end
