class CreateTables < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.column :title, :string

      t.timestamps
    end
    create_table :contributions do |t|
      t.column :image, :string
      t.column :sentence, :string
      t.column :user_id, :integer
      t.column :story_id, :integer

      t.timestamps
    end
    create_table :users do |t|
      t.column :name, :string

      t.timestamps
    end
  end
end
