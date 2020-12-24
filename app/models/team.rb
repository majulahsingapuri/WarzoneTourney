class Team < ApplicationRecord
    belongs_to :user
    before_save :changeTag

    validates :leader_name, :member1_name, :member2_name, format: { with: /\A[a-zA-Z]+\z/, message: "Only letters Allowed" }
    validates :leader_IGN, :member1_IGN, :member2_IGN, format: { with: /\A([a-zA-Z0-9])+(\#{1})([0-9]{1,7})?\z/, message: "Check format" }
    validates :leader_name, :member1_name, :member2_name, :leader_IGN, :member1_IGN, :member2_IGN, presence: true

    private
        def changeTag
            self.leader_IGN_link = leader_IGN.gsub(/\#0{1}\z/, '')
            self.member1_IGN_link = member1_IGN.gsub(/\#0{1}\z/, '')
            self.member2_IGN_link = member2_IGN.gsub(/\#0{1}\z/, '')
            self.leader_IGN_link = leader_IGN_link.gsub('#', '%23')
            self.member1_IGN_link = member1_IGN_link.gsub('#', '%23')
            self.member2_IGN_link = member2_IGN_link.gsub('#', '%23')
        end
end
