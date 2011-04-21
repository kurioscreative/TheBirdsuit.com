require 'spec_helper'

describe NonArtist do

  it { should validate_presence_of :email }
  it { should validate_presence_of :name }
  it { should validate_presence_of :roster_img_url }
  it { should validate_presence_of :roster_img_hover_url }
  
  

  it { should allow_mass_assignment_of :email }
  it { should allow_mass_assignment_of :name }
  it { should allow_mass_assignment_of :roster_img_url }
  it { should allow_mass_assignment_of :roster_img_hover_url }      

  it { should_not allow_mass_assignment_of :id }
  it { should_not allow_mass_assignment_of :created_at }
  it { should_not allow_mass_assignment_of :updated_at }
  
  
end
