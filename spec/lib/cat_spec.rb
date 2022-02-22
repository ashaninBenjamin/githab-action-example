# frozen_string_literal: true

require 'spec_helper'
require 'cat'

describe Cat do
  subject(:instance) { Cat.new(age: age, color: color) }
  let(:age) { 2 }
  let(:color) { 'black1' }

  describe '#age' do
    subject { instance.age }
    it { is_expected.to eq 2 }
  end

  describe '#color' do
    subject { instance.color }
    it { is_expected.to eq 'black1' }
  end
end
