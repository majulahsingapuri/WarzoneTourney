class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :leader_name
      t.string :leader_IGN
      t.string :member1_name
      t.string :member1_IGN
      t.string :member2_name
      t.string :member2_IGN

      t.timestamps
    end
  end
end
