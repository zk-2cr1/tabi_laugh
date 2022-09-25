class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.references :member, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true

      t.timestamps
      t.index [:member_id, :item_id], unique: true
    end
  end
end
