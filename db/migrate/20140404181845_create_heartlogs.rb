class CreateHeartlogs < ActiveRecord::Migration
  def change
    create_table :heartlogs do |t|
      t.references :user
      t.integer    :logdate
      t.integer    :heartrate
      
      t.timestamps
    end
  end
end
