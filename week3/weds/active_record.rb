require 'bundler/setup'  # => true
require 'active_record'  # => true

ActiveRecord::Base.establish_connection({
    adapter: 'sqlite3',
    database: 'db.sqlite3'
})

class StudentsMigration < ActiveRecord::Migration
  def change
    create_table(:students) do |t|
      # t.column :name, :string
      t.string :name
      t.string :email
      t.datetime :started_at
    end
  end
end

class MembershipsMigration < ActiveRecord::Migration
  def change
    create_table(:memberships) do |t|
      t.integer :student_id
      t.integer :group_id
    end
  end
end

begin
  StudentsMigration.migrate(:down)
rescue
end

StudentsMigration.migrate(:up)

begin
  MembershipsMigration.migrate(:down)
rescue
end

MembershipsMigration.migrate(:up)
