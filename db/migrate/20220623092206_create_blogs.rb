class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content

      t.timestamps #=> この一行でcreated_atとupdated_atのカラムが定義される
    end
  end
end
