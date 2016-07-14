class VoteMigration < ActiveRecord::Migration
  def up
    drop_table :votes if table_exists?(:votes)
    create_table :votes do |t|
      t.string :choice
      t.timestamps null: true
    end
  end

  def down
    drop_table :votes if table_exists?(:votes)
  end
end
