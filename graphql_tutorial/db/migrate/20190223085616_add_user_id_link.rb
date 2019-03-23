class AddUserIdLink < ActiveRecord::Migration[5.2]
  def change
    change_table :links do |t|
      t.references :user
    end
  end
end
