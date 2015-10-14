class AddTableImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.column :url, :string

      t.timestamp
    end
  end
end
