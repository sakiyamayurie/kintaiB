class AddIndexToUsersEmail < ActiveRecord::Migration[5.1]
  def change
    addd_index :users, :email, unique: true
  end
end
