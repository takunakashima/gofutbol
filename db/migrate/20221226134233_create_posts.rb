class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table   :posts do |t|
      t.integer    :month_id,           null: false
      t.integer    :day_id,             null: false
      t.integer    :team_id,            null: false
      t.text       :content,            null: false
      t.references :user,               null: false, foreign_key: true
      t.timestamps
    end
  end
end
