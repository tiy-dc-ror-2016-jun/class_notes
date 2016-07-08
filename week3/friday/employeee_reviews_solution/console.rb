require 'bundler/setup'
require 'active_record'
require 'pry'
require './department'

ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "db.sqlite3"
)

class EmployeeReviewsMigration < ActiveRecord::Migration
  def change
    # :name, :email, :phone, :salary, :review, :satisfactory
    create_table(:employees) do |t|
      t.integer :department_id
      t.string :name
      t.string :email
      t.string :phone
      t.float :salary, default: 0.0
      t.text :review
      t.boolean :satisfactory
      t.timestamps null: false
    end

    create_table(:departments) do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end

binding.pry
