# == Schema Information
# Schema version: 20110405040238
#
# Table name: releases
#
#  id                    :integer         not null, primary key
#  artist_id             :integer
#  release_img_url       :string(255)
#  release_img_hover_url :string(255)
#  video_type            :string(255)
#  video_id              :string(255)
#  video_url             :string(255)
#  title                 :string(255)
#  description           :text
#  is_featured           :boolean
#  created_at            :datetime
#  updated_at            :datetime
#

class Release < ActiveRecord::Base
  belongs_to :artist
  has_friendly_id :title, :use_slug => true
  attr_accessible :artist_id, :release_img_url, :release_img_hover_url, :video_url, :title, :description, :is_featured, :cached_slug

  before_validation :get_video_info
  
  def get_video_info
    url = video_url.to_s

    self.video_id = video[:id]
    self.video_type = video[:type]
  end
  def video
    begin
      #YouTube
      if video_url.match(/http:\/\/www\.youtube\.com\/watch\?v=([a-z0-9_\/-]+).*/i)
        {:id => $1, :type => 'youtube'}
      #----- Vimeo ------ #      
      elsif video_url.match(/http:\/\/vimeo\.com\/([a-z0-9]+).*/i)
        {:id => $1, :type => 'vimeo'}
      else
        {:id => nil, :type => 'website'}
      end
    rescue Exception
      return {:id => nil, :type => nil}
    end
  end
end
