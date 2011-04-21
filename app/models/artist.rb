# == Schema Information
# Schema version: 20110421202631
#
# Table name: artists
#
#  id                        :integer         not null, primary key
#  name                      :string(255)
#  bio_pic_url               :string(255)
#  bio_pic_hover_url         :string(255)
#  biography_text            :text
#  twitter_id                :string(255)
#  roster_pic_url            :string(255)
#  roster_pic_hover_url      :string(255)
#  bio_video_url             :string(255)
#  bio_video_id              :string(255)
#  bio_video_type            :string(255)
#  created_at                :datetime
#  updated_at                :datetime
#  cached_slug               :string(255)
#  bio_video_img_url         :string(255)
#  bio_video_img_hover_url   :string(255)
#  artist_home_img_url       :string(255)
#  artist_home_img_hover_url :string(255)
#  sort_id                   :integer
#

class Artist < ActiveRecord::Base
  has_many :releases
  has_friendly_id :name, :use_slug => true

  attr_accessible :name, :bio_pic_url, :bio_pic_hover_url, :biography_text, :twitter_id, :roster_pic_url, :roster_pic_hover_url, :bio_video_url, :cached_slug, :bio_video_img_url, :bio_video_img_hover_url, :sort_id
  
  validates_presence_of :name, :bio_pic_url, :bio_pic_hover_url, :biography_text, :twitter_id, :roster_pic_url, :roster_pic_hover_url, :bio_video_url, :bio_video_img_url, :bio_video_img_hover_url
  
  default_scope order('sort_id ASC')
  
    before_validation :get_video_info
  
  def get_video_info
    self.bio_video_id = video[:id]
    self.bio_video_type = video[:type]
  end
  
  def video
    begin
      #YouTube
      if bio_video_url.match(/http:\/\/www\.youtube\.com\/watch\?v=([a-z0-9_\/-]+).*/i)
        {:id => $1, :type => 'youtube'}
      #----- Vimeo ------ #      
      elsif bio_video_url.match(/http:\/\/vimeo\.com\/([a-z0-9]+).*/i)
        {:id => $1, :type => 'vimeo'}
      elsif bio_video_url.match(/http:\/\/www\.vimeo\.com\/([a-z0-9]+).*/i) 
        {:id => $1, :type => 'vimeo'}
      else
        {:id => nil, :type => 'website'}
      end
    rescue Exception
      return {:id => nil, :type => nil}
    end
  end
  
  
end
