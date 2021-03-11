class CreateLikeSports < ActiveRecord::Migration[5.2]
  def change
    create_table :like_sports do |t|

      t.timestamps
    end
  end
end
