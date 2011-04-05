# == Schema Information
# Schema version: 20110405040238
#
# Table name: artists
#
#  id                   :integer         not null, primary key
#  name                 :string(255)
#  bio_pic_url          :string(255)
#  bio_pic_hover_url    :string(255)
#  biography_text       :text
#  twitter_id           :string(255)
#  roster_pic_url       :string(255)
#  roster_pic_hover_url :string(255)
#  bio_video_url        :string(255)
#  bio_video_id         :string(255)
#  bio_video_type       :string(255)
#  created_at           :datetime
#  updated_at           :datetime
#

class Artist < ActiveRecord::Base
  has_many :releases
  
  attr_accessible :name, :bio_pic_url, :bio_pic_hover_url, :biography_text, :twitter_id, :roster_pic_url, :roster_pic_hover_url, :bio_video_url
end