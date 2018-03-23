class CreateResellers < ActiveRecord::Migration[5.1]
  def change
    create_table :resellers do |t|
      t.string :resname
      t.string :shortcut

      t.timestamps
    end
  end
end
