class CreateAllTables < ActiveRecord::Migration
  def self.up
    create_table(:assets) do |t|
      t.string :name
    end

    create_table(:asset_translations) do |t|
      t.string :attachment
    end
  end
end

ActiveRecord::Migration.verbose = true
CreateAllTables.up
