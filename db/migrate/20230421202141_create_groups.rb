class CreateGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.string :groupname
      t.string :password

      t.timestamps
    end
  end
end
