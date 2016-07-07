class SetupMigration < ActiveRecord::Migration
  def change
    create_table(:students) do |t|
      t.integer :group_id
      t.string :name
      t.string :github_username
    end

    create_table(:picks) do |t|
      t.integer :student_id
      t.datetime :picked_at
    end

    create_table(:groups) do |t|
      t.string :name
    end

    add_column :groups, :start_on, :date
  end
end
