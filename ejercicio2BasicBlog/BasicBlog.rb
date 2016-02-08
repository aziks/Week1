require 'pry'
class Blog

  def initialize

    @posts = [ ]
    @pagination = [ ]

  end

  def add_post(post)

    @posts.push(post)

  end

  def pagination

    @pagination = @posts.each_slice(2).to_a

  end

  def publish_front_page

    @posts.each do |post|

      puts "%%%%%%%%%%%%%%%%"
      puts "Post" + post.title
      puts "****************"
      puts post.text
      puts "----------------"
binding.pry

      if post.sponsored == true

        puts "++++++ SPONSORED ++++++"
      
      end

      puts "%%%%%%%%%%%%%%%%"

    end

  end

end

class Post 

  attr_reader :title, :date, :text, :sponsored

  def initialize(title, date, text, sponsored)

      @title = title
      @date = date
      @text = text
      @sponsored = sponsored

    end

end

blog = Blog.new
blog.add_post Post.new("buenas", "1 de feb", "ewjiiwnicnwiewiu", true)
blog.add_post Post.new("quetal", "1 de feb", "ewjiiwnicnwiewiu", true)
blog.add_post Post.new("puesyave", "1 de feb", "ewjiiwnicnwiewiu", true)
blog.add_post Post.new("usted", "1 de feb", "ewjiiwnicnwiewiu", true)
blog.add_post Post.new("coleguita", "1 de feb", "ewjiiwnicnwiewiu", true)


blog.publish_front_page

