require './library'
require 'rspec/its'

RSpec.describe Library do
  subject { Library.new }
  its(:size) { is_expected.to eq(0) }

  let(:photo1) { Photo.new('landscape.jpg', 'Dan', Time.new(2014, 10, 10)) }
  let(:photo2) { Photo.new('skyscrapers.jpg', 'Dan', Time.new(2014, 12, 1)) }

  describe '#add_photo' do
    specify 'adds a photo to the library' do
      subject.add_photo(photo1)
      expect(subject.size).to eq(1)
    end
  end

  describe '#latest' do
    specify 'returns the most recent photo' do
      subject.add_photo(photo1)
      subject.add_photo(photo2)
      expect(subject.latest).to eq(photo2)
    end
  end

  context 'a library that contains a photo' do
    before do
      subject.add_photo(photo1)
    end

    describe '#pop' do
      specify 'Remove the last photo' do
        expect(subject.pop).to eq(photo1)
        expect(subject.size).to eq(0)
      end
    end

      describe '#clear!' do
      specify 'Clear library' do
        subject.clear!
        expect(subject.size).to eq(0)
      end
    end
  end
end
