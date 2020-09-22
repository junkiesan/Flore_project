require 'article'

RSpec.describe Article, "#presence" do
  context "An article should be created" do
    it "creates an article" do
      article = Article.new
      article.save
    end
  end
end
