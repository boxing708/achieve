class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.text :content, null: false
      t.string :category, null: false

      t.timestamps
    end
  end
end
