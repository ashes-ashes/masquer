class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :account_name, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :session_token, null: false

      t.date :birthdate, null: false

      t.index :account_name, unique: true
      t.index :email, unique: true
      t.index :session_token, unique: true

      t.timestamps
    end
  end
end
