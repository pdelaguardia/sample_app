class AddIndexToUsersEmail < ActiveRecord::Migration
  def change
    before_save {self.email = email.downcase}
    add_index :users, :email, unique: true
  end
end
