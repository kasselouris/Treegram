class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user, index: true, foreign_key: true
      t.references :photo, index: true, foreign_key: true
      t.text :comment_text
    end
  end
end
