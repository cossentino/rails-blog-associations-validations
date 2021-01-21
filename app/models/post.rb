class Post < ActiveRecord::Base
    has_many :post_tags
    has_many :tags, through: :post_tags
    belongs_to :user
    validates_presence_of :name, :content


    def tag_ids=(tag_ids_array)
        tag_ids_array.each do |tag_id|
            self.post_tags.build(tag_id: tag_id)
        end
    end
end
