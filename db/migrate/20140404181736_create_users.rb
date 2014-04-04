class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   :initials
      t.date     :birthdate
      t.string   :password

      t.timestamps
    end
  end
end
