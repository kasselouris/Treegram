class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.column :user_id, :int
      t.column :photo_id, :int
    end
  end
end
