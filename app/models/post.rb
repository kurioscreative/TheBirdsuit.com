# == Schema Information
# Schema version: 20110405062858
#
# Table name: posts
#
#  id               :integer         not null, primary key
#  title            :string(255)
#  summary          :text
#  body             :text
#  author           :string(255)
#  featured         :boolean
#  featured_img_url :string(255)
#  published_date   :datetime
#  status           :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#

class Post < ActiveRecord::Base
has_friendly_id :title, :use_slug => true

validates :published_date, :presence => true
validates :title, :presence => true
validates :summary, :presence => true
validates :body, :presence => true
validates :author, :presence => true
end
