class UserMigration < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      t.string :token
      t.timestamps null: false
    end
  end

end
