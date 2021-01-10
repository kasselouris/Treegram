class PhotosTable < ActiveRecord::Migration
  def change
    create_table :photos do |photos|
      photos.column :user_id, :integer
      photos.column :caption, :string
      photos.timestamps
    end
  end
end
