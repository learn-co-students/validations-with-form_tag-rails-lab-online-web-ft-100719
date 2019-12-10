class Post < ActiveRecord::Base
    validates_presence_of :title
    validates :content, length: { minimum: 100 }
    validates :category, inclusion: { in: ["Fiction", "Non-Fiction"]}
end
