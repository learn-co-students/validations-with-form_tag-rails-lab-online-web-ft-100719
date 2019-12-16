class AuthorValidator < ActiveModel::Validator

  def validate(author)
    binding.pry 

    if author.name == nil
      author.errors[:name] << "Must contain Name"
    end

    #email = author.email
    #if email.uniq? == false
     # author.errors[:email] << "email is currently registered"
    #end

    if author.phone_number.length != 10
      author.errors[:phone_number] << "Number must be ten digits long"
    end 
  end
end 