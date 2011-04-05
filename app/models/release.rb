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
  
  attr_accessible :artist_id, :release_img_url, :release_img_hover_url, :video_url, :title, :description, :is_featured
end
