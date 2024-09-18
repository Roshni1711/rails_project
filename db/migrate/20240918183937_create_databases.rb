class CreateDatabases < ActiveRecord::Migration[7.2]
  def change
    create_table :databases do |t|
      t.string :domain, null: false
      t.string :adapter, null: false
      t.string :encoding, null: false
      t.string :database, null: false
      t.integer :pool, null: false
      t.string :username, null: false
      t.string :password, null: false
      t.string :host, null: false
      t.string :enabled, default: false

      t.timestamps
    end

    add_index :databases, :domain, unique: true
  end
end
