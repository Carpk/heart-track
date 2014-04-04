class CreateHeartlogs < ActiveRecord::Migration
  def change
    create_table :heartlogs do |t|
      t.references :user_id
      t.datetime   :logdate
      t.integer    :maxhr
      t.timestamps
    end
  end
end
