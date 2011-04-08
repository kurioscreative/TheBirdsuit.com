# == Schema Information
# Schema version: 20110408141102
#
# Table name: non_artists
#
#  id                   :integer         not null, primary key
#  email                :string(255)
#  name                 :string(255)
#  roster_img_url       :string(255)
#  roster_img_hover_url :string(255)
#  created_at           :datetime
#  updated_at           :datetime
#

class NonArtist < ActiveRecord::Base

attr_accessible :email, :name, :roster_img_url, :roster_img_hover_url

validates_presence_of :email, :name, :roster_img_url, :roster_img_hover_url

default_scope order('name ASC')
end
