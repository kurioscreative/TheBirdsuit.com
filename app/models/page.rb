# == Schema Information
# Schema version: 20110406232901
#
# Table name: pages
#
#  id                 :integer         not null, primary key
#  body               :text
#  title              :string(255)
#  page_img_url       :string(255)
#  page_name          :string(255)
#  activate_as_splash :boolean
#  created_at         :datetime
#  updated_at         :datetime
#

class Page < ActiveRecord::Base

validates_uniqueness_of :page_name

validates_presence_of :body, :title, :page_img_url, :page_name
end
