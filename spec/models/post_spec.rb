require 'spec_helper'

describe Post do

  it { should validate_presence_of :published_date }
  it { should validate_presence_of :title }
  it { should validate_presence_of :summary }  
  it { should validate_presence_of :body }  
  it { should validate_presence_of :author }  


  it { should_not allow_mass_assignment_of :id }
  it { should_not allow_mass_assignment_of :created_at }
  it { should_not allow_mass_assignment_of :updated_at }



end
