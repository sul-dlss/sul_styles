require 'rails_helper'

describe SULStyles::Colors do
  describe 'all' do
    it 'returns an array of CssFiles the length of number of files' do
      expect(
        subject.all.all? do |file|
          file.is_a?(SULStyles::Colors::CssFile)
        end
      ).to be true

      expect(subject.all.length).to eq subject.send(:color_files).length
    end

    it 'the CssFile parses titles out of the comment at the top of the file' do
      expect(subject.all.first.title).to match /Stanford Primary Colors/
    end

    it 'the CssFile parses color variables and returns ColorDatas' do
      expect(
        subject.all.first.colors.all? do |color|
          color.is_a?(SULStyles::Colors::ColorData)
        end
      ).to be true
    end
  end

  describe 'colors' do
    it 'returns a hash' do
      expect(subject.colors).to be_a Hash
    end
    it 'is keyed by hex code' do
      subject.colors.keys.all? do |key|
        expect(key).to match(/^#\S{6}|\S{3}$/)
      end
    end

    it 'has values that are variables' do
      subject.colors.values.all? do |value|
        expect(value).to match(/^\$\S+$/)
      end
    end
  end

  describe SULStyles::Colors::CssFile do
    let(:subject) { described_class.new(title: 'The comment at the top of the file', colors: ['color']) }
    it 'allows access to the title' do
      expect(subject.title).to eq 'The comment at the top of the file'
    end

    it 'allows access to the colors array' do
      expect(subject.colors).to eq ['color']
    end
  end

  describe SULStyles::Colors::ColorData do
    let(:subject) { described_class.new(variable: 'abc123', value: '#000;') }
    it 'allows access to the variable name' do
      expect(subject.variable).to eq 'abc123'
    end

    it 'allows access to the variable value (and strips off the semi-colon)' do
      expect(subject.value).to eq '#000'
    end
  end
end
