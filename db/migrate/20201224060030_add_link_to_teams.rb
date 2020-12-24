class AddLinkToTeams < ActiveRecord::Migration[6.1]
  def change
    add_column :teams, :leader_IGN_link, :string
    add_column :teams, :member1_IGN_link, :string
    add_column :teams, :member2_IGN_link, :string
  end
end
