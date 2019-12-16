class PostValidator < ActiveModel::Validator

  def validate(post)
    #binding.pry
    if post.title == nil
      post.errors[:title] << "Title can not be blank"
    end

    if post.content.length < 100 
     post.errors[:content] << "must be at least 100 characters long"
    end

    option = [/Fiction/,  /Non-Fiction/ ]
    if option.none?{|o| o.match post.category}
      post.errors[:category] << "Category must be: Fiction or Non-Fiction"
    end 
  end

end 