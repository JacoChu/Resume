class Resume < ApplicationRecord

    # validations
    validates :title, presence: true
    validates :content, presence: true
    
    # relationships
    belongs_to :user
    
    


    # callbacks
    def self.all_status
        [
            ["草稿", "draft"],
            ["發布", "published"],
        ]
    end
end
