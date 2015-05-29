class Comment < ActiveRecord::Base
  belongs_to :article # to create this with rails we type rails g model Comment commenter:string body:text article:references
  belongs_to :user
end
