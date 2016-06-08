class CreateRejectionLetters < ActiveRecord::Migration
  def change
    create_table :rejection_letters do |t|
      t.text :text
      t.string :image_url
      t.text :notes
      
      t.timestamps null: false
    end
  end
end
