class Album < ActiveRecord::Base
     validates :title, :presence => true
     validates :artist_id, :presence => true
     belongs_to :artists
     has_many :songs
    
end
