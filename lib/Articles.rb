require 'pry'
require_relative '../config/environment.rb'
def reload
    load 'config/environment.rb'
end
class Article
    attr_reader :author, :magazine, :title
    @@all  = []
    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end

    def self.all
        @@all 
    end

end
# class Author
#     attr_reader :name, :articles, :magazines 

#     def initialize(name)
#         @name = name
#     end
#     def articles
#         Article.all.filter do |article|
#           article.author == @name
#         end
#     end
#     def magazines
#         articles.map{|article|article.magazine}.uniq
#     end
#     def add_article(magazine, title)
#         Article.new(self, magazine, title)
#     end
#     def topic_areas
#         magazines.map{|magazine| magazine.category}.uniq
#     end
# end

# class Magazine
#     attr_accessor :name, :category, :title
#     @@all = []
#     def initialize(name, category)
#         @name = name
#         @category = category

#         @@all << self
#     end
#     def self.all
#         @@all 
#     end
#     def contributors
#         Article.all.filter{|article| article.magazine == @name}.map{|var| var.author}
#     end
#     def find_by_name (name)
#         Magazine.all.find{|magazine| magazine.name == name}
#     end
#     def  article_titles
#         Article.all.filter{|article| article.magazine == @name}.map{|var| var.title}
#     end
#     def contributing_authors
#         # filter  and tally
#     contributors.tally.each{|key, value| value > 2}
#       end
# end


# tracy = Author.new("Tracy")
# davi = Author.new("Davi")
# ken = Author.new("Ken")
# esther = Author.new("Esther")
# joseph = Author.new("Joseph")



# standard = Magazine.new("Standard", "Magazine")
# nation = Magazine.new("nation", "Handout")
# star = Magazine.new("star", "Magazine")
# strikas = Magazine.new("strikas", "Handout")







