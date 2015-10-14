require 'rails_helper'

describe Contribution do
  it { should validate_presence_of :sentence }
  it { should validate_presence_of :image }

end
