# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

TOTAL_AUTHORS = 100
TOTAL_POSTS = 5000
COMMENTS_PER_POST = 50

Author.delete_all
Post.delete_all
Comment.delete_all

TOTAL_AUTHORS.times do
  Author.create :name => String.random(16)
end

all_authors = Author.all

TOTAL_POSTS.times do
  author = all_authors[rand(TOTAL_AUTHORS)]
  post = Post.create(:title => String.random(32), :body => String.random(512), :author_id => author.id)

  COMMENTS_PER_POST.times do
    post.comments.create :display_name => String.random(8), :body => String.random(256), :website => String.random(16)
  end
end

print "Seed Data inserted successfully\n"
