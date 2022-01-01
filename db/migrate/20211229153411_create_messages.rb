class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.string :name
      t.string :email
      t.string :subject
      t.string :text
      t.boolean :visibility

      t.timestamps
    end
  end
end
