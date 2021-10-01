class CreateUserAuthorities < ActiveRecord::Migration[6.1]
  def change
    create_table :user_authorities do |t|
      t.references :user, null: false, index: true
      t.string :service
      t.string :function
      t.boolean :writable

      t.timestamps
    end

    add_foreign_key :user_authorities, :users
  end
end
