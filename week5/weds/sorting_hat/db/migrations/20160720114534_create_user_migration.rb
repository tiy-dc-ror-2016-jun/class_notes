class CreateUserMigration < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      
    end
  end
end