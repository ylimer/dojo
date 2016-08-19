class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment
      t.references :commentable, polymorphic: true, index: true

      t.timestamps
    end
    add_index :comments, :comment
  end
end
