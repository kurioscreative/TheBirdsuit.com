require 'spec_helper'

describe Artist do

  it { should validate_presence_of :name }
  it { should validate_presence_of :bio_pic_url }
  it { should validate_presence_of :bio_pic_hover_url }
  it { should validate_presence_of :biography_text }
  it { should validate_presence_of :twitter_id }
  it { should validate_presence_of :roster_pic_url }
  it { should validate_presence_of :roster_pic_hover_url }
  it { should validate_presence_of :bio_video_url }
  it { should validate_presence_of :bio_video_img_url }
  it { should validate_presence_of :bio_video_img_hover_url }
  it { should validate_presence_of :biography_text }

  it { should have_many :releases }
  
  it { should allow_mass_assignment_of :name }
  it { should allow_mass_assignment_of :bio_pic_url }
  it { should allow_mass_assignment_of :bio_pic_hover_url }
  it { should allow_mass_assignment_of :biography_text }
  it { should allow_mass_assignment_of :twitter_id }
  it { should allow_mass_assignment_of :roster_pic_url }
  it { should allow_mass_assignment_of :roster_pic_hover_url }
  it { should allow_mass_assignment_of :bio_video_url }
  it { should allow_mass_assignment_of :bio_video_img_url }
  it { should allow_mass_assignment_of :bio_video_img_hover_url }
  it { should allow_mass_assignment_of :biography_text }
  it { should allow_mass_assignment_of :cached_slug }
  it { should allow_mass_assignment_of :sort_id }
  
  it { should_not allow_mass_assignment_of :id }
  it { should_not allow_mass_assignment_of :created_at }
  it { should_not allow_mass_assignment_of :updated_at }
  
  
end
