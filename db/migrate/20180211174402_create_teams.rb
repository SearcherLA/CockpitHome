class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :teamname
      t.string :shortcut

      t.timestamps
    end
  end
end
