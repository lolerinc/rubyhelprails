class Song < ActiveRecord::Base
    validates :title, :presence => true
    validates :album_id, :presence => true

    belongs_to :album
end
