require 'spec_helper'

describe String do

  let(:example_string) { 'one potato, two potato, three potato, four' }
  let(:matching_regex) { /(one).*(two).*(three)/ }
  let(:non_matching_regex) { /five/ }

  describe 'capture' do

    context 'given a matching regex' do

      subject { example_string.capture(matching_regex) }

      it 'returns all capture group matches' do
        expect(subject).to eq ['one', 'two', 'three']
      end
    end

    context 'given a non matching regex' do

      subject { example_string.capture(non_matching_regex) }

      it 'returns a no matches' do
        expect(subject).to be_empty
      end
    end
  end

  describe 'capture_first' do

    context 'given a matching regex with multiple matches' do

      subject { example_string.capture_first(matching_regex) }

      it 'returns the first capture group match' do
        expect(subject).to eq 'one'
      end
    end

    context 'given a non matching regex' do

      subject { example_string.capture_first(non_matching_regex) }

      it 'returns nil' do
        expect(subject).to be_nil
      end
    end
  end

  describe 'capture_last' do

    context 'given a matching regex with multiple matches' do

      subject { example_string.capture_last(matching_regex) }

      it 'returns the last capture group match' do
        expect(subject).to eq 'three'
      end
    end

    context 'given a non matching regex' do

      subject { example_string.capture_last(non_matching_regex) }

      it 'returns nil' do
        expect(subject).to be_nil
      end
    end
  end
end
