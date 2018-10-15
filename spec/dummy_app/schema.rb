class CreateAllTables < ActiveRecord::Migration[4.2]
  def self.up
    create_table(:assets) do |t|
      t.string :name
    end

    create_table(:asset_translations) do |t|
      t.string   :attachment
      t.integer  :asset_id,   null: false
      t.string   :locale,     null: false
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end

    add_index :asset_translations, :asset_id
    add_index :asset_translations, :locale
  end
end

ActiveRecord::Migration.verbose = true
CreateAllTables.up
