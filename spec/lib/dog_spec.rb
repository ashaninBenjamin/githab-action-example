# frozen_string_literal: true

require 'spec_helper'
require 'dog'

describe Dog do
  subject(:instance) { described_class.new(age: age, color: color) }
  let(:age) { 3 }
  let(:color) { 'yellow1' }

  describe '#age' do
    subject { instance.age }
    it { is_expected.to eq 3 }
  end

  describe '#color' do
    subject { instance.color }
    it { is_expected.to eq 'yellow1' }
  end
end
