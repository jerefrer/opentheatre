class Movie < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]

  mount_uploader :poster, PosterUploader
end
