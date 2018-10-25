class Post < ApplicationRecord
  include PgSearch

  belongs_to :user

  mount_uploader :photo, PhotoUploader

  pg_search_scope :search_by_posts, :against => :caption,
    :using =>  {:tsearch => {:prefix => true}
   }

end
