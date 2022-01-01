class ChangeColumnToMessage < ActiveRecord::Migration[6.1]
  def change
    change_column :messages, :visibility, :boolean, default: true
    change_column :messages, :text, :string, null: false
  end
end
