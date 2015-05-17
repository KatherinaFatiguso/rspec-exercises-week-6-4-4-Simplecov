require 'rspec/its'
require './photo'

RSpec.describe Photo do
  subject(:photo) { Photo.new('landscape.jpg', 'Dan', Time.new(2015, 1, 10)) }

  its(:taken_by) { is_expected.to eq('Dan') }
  its(:taken_at) { is_expected.to eq(Time.new(2015, 1, 10)) }
  its(:filename) { is_expected.to eq('landscape.jpg') }
  its(:to_s)     { is_expected.to eq('landscape.jpg 2015-01-10 00:00:00 +1100 Dan') }
  its(:days_since_taken) { is_expected.to eq(124) }

end
