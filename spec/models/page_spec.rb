require 'spec_helper'

describe Page do


  
  it { should validate_presence_of :body }
  it { should validate_presence_of :title }
  it { should validate_presence_of :page_img_url }
  it { should validate_presence_of :page_name }

  it { should allow_mass_assignment_of :body }
  it { should allow_mass_assignment_of :title }
  it { should allow_mass_assignment_of :page_img_url }
  it { should allow_mass_assignment_of :page_name }
  it { should allow_mass_assignment_of :activate_as_splash }

  it { should_not allow_mass_assignment_of :id }
  it { should_not allow_mass_assignment_of :created_at }
  it { should_not allow_mass_assignment_of :updated_at }

end
