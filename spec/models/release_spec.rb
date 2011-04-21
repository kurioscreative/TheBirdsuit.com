require 'spec_helper'

describe Release do
  
  it { should belong_to(:artist) }
  


  it { should_not allow_mass_assignment_of :id }
  it { should_not allow_mass_assignment_of :created_at }
  it { should_not allow_mass_assignment_of :updated_at }

end
