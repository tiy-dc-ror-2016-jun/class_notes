class CreatePickMigration < ActiveRecord::Migration
  def change
    create_table(:picks) do |t|
      t.integer :user_id
      t.datetime :picked_at
    end
  end
end
